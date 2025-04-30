#include <ap_fixed.h>
#include "forward_fw.hpp"

static const int N_INPUT  = 784;
static const int N_HIDDEN = 128;
static const int N_OUTPUT = 1;

// Tipos de datos: 
// bin_t para pesos/activaciones binarias; acc_t para acumuladores.
typedef ap_fixed<8,8>   bin_t;  // 8 bits totales, 8 bits enteros (±128 rango)
typedef ap_fixed<12,12> acc_t;  // 12 bits totales, 12 bits enteros (±2048 rango)

// Matrices de pesos (inicializadas externamente a +1/-1); se coloca preferentemente en BRAM
static bin_t W1[N_HIDDEN][N_INPUT];
#pragma HLS bind_storage variable=W1 type=RAM_1P
static bin_t W2[N_OUTPUT][N_HIDDEN];
#pragma HLS bind_storage variable=W2 type=RAM_1P
 
// Función de signo: devuelve +1 o -1
bin_t signum(acc_t x) {
    return (x >= 0) ? (bin_t)1 : (bin_t)-1;
}

// Forward propagación: capa oculta
void forwardHidden(const bin_t input[N_INPUT], bin_t hidden[N_HIDDEN]) {
    // Para cada neurona oculta...
    for(int j = 0; j < N_HIDDEN; j++) {
        #pragma HLS pipeline II=1
        acc_t sum = 0;
        // Producto punto: sum += input[i] * W1[j][i]
        for(int i = 0; i < N_INPUT; i++) {
            #pragma HLS pipeline II=1
            sum += (acc_t)input[i] * (acc_t)W1[j][i];
        }
        // Activación binaria (+1/-1)
        hidden[j] = signum(sum);
    }
}

// Forward propagación: capa de salida
void forwardOutput(const bin_t hidden[N_HIDDEN], bin_t output[N_OUTPUT]) {
    // (En este caso N_OUTPUT=1, pero se generaliza)
    for(int k = 0; k < N_OUTPUT; k++) {
        #pragma HLS pipeline II=1
        acc_t sum = 0;
        for(int j = 0; j < N_HIDDEN; j++) {
            #pragma HLS pipeline II=1
            sum += (acc_t)hidden[j] * (acc_t)W2[k][j];
        }
        output[k] = signum(sum);
    }
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

// Actualización de pesos (regla de gradiente local Forward-Forward)
// Ejemplo: W_new = sign(W_old + ALPHA * delta * input)
// Donde delta = (salida_pos - salida_neg) para cada neurona
const bin_t ALPHA = 1; // tasa de aprendizaje (constante)
void updateHidden(const bin_t input[N_INPUT],
                  const bin_t out_pos[N_HIDDEN],
                  const bin_t out_neg[N_HIDDEN]) {
    for(int j = 0; j < N_HIDDEN; j++) {
        #pragma HLS pipeline II=1
        bin_t delta = out_pos[j] - out_neg[j];
        for(int i = 0; i < N_INPUT; i++) {
            #pragma HLS pipeline II=1
            acc_t w_new = (acc_t)W1[j][i] + ALPHA * (acc_t)delta * (acc_t)input[i];
            // Re-binarizar: solo +1 o -1
            W1[j][i] = (w_new >= 0) ? (bin_t)1 : (bin_t)-1;
        }
    }
}

// Puerto LED (simulado en HLS; se conectará a AXI-GPIO en Vivado)
volatile ap_uint<4> leds;

#pragma HLS INTERFACE ap_none port=leds
#pragma HLS INTERFACE s_axilite port=return bundle=control

void train_step(const bin_t img_pos[N_INPUT],
                const bin_t img_neg[N_INPUT],
                int         last_sample) {
#pragma HLS DATAFLOW

    static bin_t hidden_pos[N_HIDDEN], hidden_neg[N_HIDDEN];
    static bin_t out_pos[N_OUTPUT],    out_neg[N_OUTPUT];

    // Fase positiva
    forwardHidden(img_pos, hidden_pos);
    forwardOutput(hidden_pos, out_pos);

    // Fase negativa
    forwardHidden(img_neg, hidden_neg);
    forwardOutput(hidden_neg, out_neg);

    // Actualiza pesos
    updateHidden(img_pos, hidden_pos, hidden_neg);

    // Indicador LED: ON durante entrenamiento, parpadeo al final
    if (last_sample)
        leds ^= 0xF;           // toggle al terminar (visible en co-sim)
    else
        leds  = 0xF;           // ON fijo
}