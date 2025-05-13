#include <ap_fixed.h>
#include <ap_int.h>
#include <cstdint>
#include "forward_fw.hpp"


// ---------------------------------------------------------------------------
// TIPOS Y CONSTANTES
// ---------------------------------------------------------------------------
// bin_t = pesos/activaciones binarias; acc_t = acumuladores (punto fijo)
typedef ap_fixed<8,8>   bin_t;   // 8 bits totales, 8 bits enteros (±128)
typedef ap_fixed<12,12> acc_t;   // 12 bits totales, 12 bits enteros (±2048)

// Aprendizaje (Forward-Forward local)
const bin_t ALPHA = 1;           // tasa de aprendizaje fija

// Puerto LED (simulado en HLS; se conectará a AXI-GPIO en Vivado)
volatile ap_uint<4> leds;

// Matrices de pesos (inicializadas externamente a +1/-1); se coloca preferentemente en BRAM
bin_t W1[N_HIDDEN][N_INPUT];
bin_t W2[N_OUTPUT][N_HIDDEN];
 
// ---------------------------------------------------------------------------
// FUNCIONES AUXILIARES
// ---------------------------------------------------------------------------
// Función de signo: devuelve +1 o -1
bin_t signum(acc_t x) {
    return (x >= 0) ? (bin_t)1 : (bin_t)-1;
}

// Cálculo de bondad de una capa: suma de cuadrados de activaciones
acc_t computeGoodness(const bin_t vec[], int size) {
    acc_t sq = 0;
    for(int i = 0; i < size; i++) {
        #pragma HLS pipeline II=1
        acc_t v = (acc_t)vec[i];
        sq += v * v;
    }
    return sq;
}

// ---------------------------------------------------------------------------
// PROPAGACIÓN HACIA ADELANTE
// ---------------------------------------------------------------------------
// Forward propagación: capa oculta
void forwardHidden(const bin_t input[N_INPUT], bin_t hidden[N_HIDDEN]) {
    // Para cada neurona oculta...
    #pragma HLS pipeline II=1       // Pipeline SOLO en bucle exterior -> evita warning HLS 211-200
    for(int j = 0; j < N_HIDDEN; j++) {
        acc_t sum = 0;
        // Producto punto: sum += input[i] * W1[j][i]
        for(int i = 0; i < N_INPUT; i++) {
            sum += (acc_t)input[i] * (acc_t)W1[j][i];
        }
        // Activación binaria (+1/-1)
        hidden[j] = signum(sum);
    }
}

// Forward propagación: capa de salida
void forwardOutput(const bin_t hidden[N_HIDDEN], bin_t output[N_OUTPUT]) {
    // (En este caso N_OUTPUT=1, pero se generaliza para otras pruebas)
    #pragma HLS pipeline II=1       // Lo mismo que en la capa oculta
    for(int k = 0; k < N_OUTPUT; k++) {
        acc_t sum = 0;
        for(int j = 0; j < N_HIDDEN; j++) {
            sum += (acc_t)hidden[j] * (acc_t)W2[k][j];
        }
        output[k] = signum(sum);
    }
}

// ---------------------------------------------------------------------------
// ACTUALIZACIÓN LOCAL (Forward-Forward)
// ---------------------------------------------------------------------------
// Actualización de pesos (regla de gradiente local Forward-Forward)
// Ejemplo: W_new = sign(W_old + ALPHA * delta * input)
// Donde delta = (salida_pos - salida_neg) para cada neurona
void updateHidden(const bin_t input[N_INPUT],
                  const bin_t out_pos[N_HIDDEN],
                  const bin_t out_neg[N_HIDDEN]) {
    #pragma HLS pipeline II=1
    for(int j = 0; j < N_HIDDEN; j++) {
        bin_t delta = out_pos[j] - out_neg[j];
        for(int i = 0; i < N_INPUT; i++) {
            acc_t w_new = (acc_t)W1[j][i] + ALPHA * (acc_t)delta * (acc_t)input[i];
            // Re-binarizar: solo +1 o -1
            W1[j][i] = (w_new >= 0) ? (bin_t)1 : (bin_t)-1;
        }
    }
}

// ---------------------------------------------------------------------------
// FUNCIÓN TOP-LEVEL (entrenamiento paso a paso)
// ---------------------------------------------------------------------------
void train_step(const bin_t img_pos[N_INPUT],
                const bin_t img_neg[N_INPUT],
                int         last_sample,
                bin_t       W1_out[N_HIDDEN][N_INPUT],
                bin_t       W2_out[N_OUTPUT][N_HIDDEN],
                int         sample_idx) {
    // --- Interfaz AXI4-Lite control bundle para inputs y control ---
    #pragma HLS INTERFACE mode=s_axilite port=img_pos     bundle=CTRL
    #pragma HLS INTERFACE mode=s_axilite port=img_neg     bundle=CTRL
    #pragma HLS INTERFACE mode=s_axilite port=last_sample bundle=CTRL
    #pragma HLS INTERFACE mode=s_axilite port=sample_idx  bundle=CTRL
    #pragma HLS INTERFACE mode=s_axilite port=return      bundle=CTRL

    // --- Directiva para exponer 'leds' como puerto simple sin handshake ---
    #pragma HLS INTERFACE ap_none port=leds

    // --- AXI master for weights ---
    #pragma HLS INTERFACE mode=m_axi port=W1_out offset=slave depth=N_HIDDEN*N_INPUT bundle=WEIGHTS
    #pragma HLS INTERFACE mode=m_axi port=W2_out offset=slave depth=N_OUTPUT*N_HIDDEN bundle=WEIGHTS

    // --- Mantener binding de BRAM en scope de función ---
    #pragma HLS bind_storage variable=W1 type=RAM_1P
    #pragma HLS bind_storage variable=W2 type=RAM_1P
    
    // --- Paraleliza etapas
    #pragma HLS DATAFLOW

    // --- Buffers internos ---
    static bin_t hidden_pos[N_HIDDEN], hidden_neg[N_HIDDEN];
    static bin_t out_pos[N_OUTPUT],    out_neg[N_OUTPUT];

    // --- Fase positiva ---
    forwardHidden(img_pos, hidden_pos);
    forwardOutput(hidden_pos, out_pos);

    // --- Fase negativa ---
    forwardHidden(img_neg, hidden_neg);
    forwardOutput(hidden_neg, out_neg);

    // --- Actualiza pesos ---
    updateHidden(img_pos, hidden_pos, hidden_neg);

    // --- Después de actualizar W1 y W2, copiarlos a las salidas AXI-Master ---
    for(int j=0; j < N_HIDDEN; j++)
        for(int i=0; i<N_INPUT; i++)
            W1_out[j][i] = W1[j][i];

    for(int k=0; k < N_OUTPUT; k++)
        for(int j=0; j < N_HIDDEN; j++)
            W2_out[k][j] = W2[k][j];

    // --- Actualiza LEDs para mostrar progreso ---
    // Mapea sample_idx [0..NUM_IMAGES-1] a 4 bits [0..15]
    unsigned int level = (sample_idx * 15) / (NUM_IMAGES - 1);
    leds = (uint32_t)level;             // mapeo directo [0..15]

    // Al final de todas las muestras, parpadeo
    if (last_sample)
        leds = (uint32_t)(~level) & 0xF;        // evita error de tipo :contentReference[oaicite:12]{index=12}
}
