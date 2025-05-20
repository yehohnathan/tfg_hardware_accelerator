#include "forward_fw.hpp"

// ---------------------------------------------------------------------------
// Definición de variables globales de pesos y LEDs (si se quisieran usar)
// ---------------------------------------------------------------------------
bin_t W1[N_HIDDEN][N_INPUT];
bin_t W2[N_OUTPUT][N_HIDDEN];

// ---------------------------------------------------------------------------
// Función de signo: binariza a +1 o -1
// ---------------------------------------------------------------------------
bin_t signum(acc_t x) {
    return (x >= 0) ? (bin_t)1 : (bin_t)-1;
}

// ---------------------------------------------------------------------------
// Calcula la "bondad" (goodness) de un vector binario: suma de cuadrados
// ---------------------------------------------------------------------------
acc_t computeGoodness(const bin_t vec[], int size) {
    acc_t acc = 0;
    for(int i = 0; i < size; i++) {
        acc += (acc_t)vec[i] * (acc_t)vec[i];
    }
    return acc;
}

// ---------------------------------------------------------------------------
// Propagación hacia adelante: capa oculta
// ---------------------------------------------------------------------------
void forwardHidden(const bin_t input[N_INPUT],
                   bin_t       hidden[N_HIDDEN]) {
    // Para cada neurona j de la capa oculta...
    for(int j = 0; j < N_HIDDEN; j++) {
        acc_t sum = 0;
        // Producto punto input · W1[j]
        for(int i = 0; i < N_INPUT; i++) {
            sum += (acc_t)input[i] * (acc_t)W1[j][i];
        }
        // Binariza la salida
        hidden[j] = signum(sum);
    }
}

// ---------------------------------------------------------------------------
// Propagación hacia adelante: capa de salida
// ---------------------------------------------------------------------------
void forwardOutput(const bin_t hidden[N_HIDDEN],
                   bin_t       output[N_OUTPUT]) {
    for(int k = 0; k < N_OUTPUT; k++) {
        acc_t sum = 0;
        for(int j = 0; j < N_HIDDEN; j++) {
            sum += (acc_t)hidden[j] * (acc_t)W2[k][j];
        }
        output[k] = signum(sum);
    }
}

// ---------------------------------------------------------------------------
// Actualización local de pesos (Forward-Forward)
// delta = out_pos - out_neg
// W_new = sign( W_old + α * delta * input )
// ---------------------------------------------------------------------------
void updateHidden(const bin_t input[N_INPUT],
                  const bin_t out_pos[N_HIDDEN],
                  const bin_t out_neg[N_HIDDEN]) {
    const bin_t ALPHA = 1;  // tasa de aprendizaje
    for(int j = 0; j < N_HIDDEN; j++) {
        bin_t delta = out_pos[j] - out_neg[j];
        for(int i = 0; i < N_INPUT; i++) {
            acc_t w_new = (acc_t)W1[j][i]
                          + ALPHA * (acc_t)delta * (acc_t)input[i];
            // Rebinariza a ±1
            W1[j][i] = (w_new >= 0) ? (bin_t)1 : (bin_t)-1;
        }
    }
}

// ---------------------------------------------------------------------------
// Actualización local de pesos (Forward-Forward) para W2
// delta = out_pos - out_neg
// W2_new = sign( W2_old + α * delta * hidden )
// ---------------------------------------------------------------------------
void updateOutput(const bin_t hidden[N_HIDDEN],
                  const bin_t out_pos[N_OUTPUT],
                  const bin_t out_neg[N_OUTPUT]) {
    const bin_t ALPHA = 1;
    for(int k = 0; k < N_OUTPUT; k++) {
        bin_t delta = out_pos[k] - out_neg[k];
        for(int j = 0; j < N_HIDDEN; j++) {
            acc_t w_new = (acc_t)W2[k][j]
                          + ALPHA * (acc_t)delta * (acc_t)hidden[j];
            W2[k][j] = (w_new >= 0) ? (bin_t)1 : (bin_t)-1;
        }
    }
}

// ---------------------------------------------------------------------------
// Top-level train_step
//   - img_pos: muestra real del dataset
//   - img_neg: muestra aleatoria de ruido
//   - sample_idx: índice de la iteración actual
// ---------------------------------------------------------------------------
void train_step(const uint8_t img_pos[N_INPUT],
                const uint8_t img_neg[N_INPUT],
                int           sample_idx) {
    // Mapeo de memorias globales a AXI-Master (pesos externos)
    #pragma HLS INTERFACE m_axi port=W1 offset=slave bundle=WEIGHTS depth=N_HIDDEN*N_INPUT
    #pragma HLS INTERFACE m_axi port=W2 offset=slave bundle=WEIGHTS depth=N_OUTPUT*N_HIDDEN

    // Interfaces de control por AXI-Lite
    #pragma HLS INTERFACE s_axilite port=img_pos     bundle=CTRL
    #pragma HLS INTERFACE s_axilite port=img_neg     bundle=CTRL
    #pragma HLS INTERFACE s_axilite port=sample_idx  bundle=CTRL
    #pragma HLS INTERFACE s_axilite port=return      bundle=CTRL

    // 1) Binarizar internamente los vectores de entrada
    bin_t in_pos[N_INPUT], in_neg[N_INPUT];
    for(int i = 0; i < N_INPUT; i++) {
        in_pos[i] = (img_pos[i] > 127) ? (bin_t)1 : (bin_t)-1;
        in_neg[i] = (img_neg[i] > 127) ? (bin_t)1 : (bin_t)-1;
    }

    // Buffers temporales en BRAM
    bin_t hidden_pos[N_HIDDEN], hidden_neg[N_HIDDEN];
    bin_t out_pos[N_OUTPUT],    out_neg[N_OUTPUT];

    // --- Fase positiva ---
    forwardHidden(in_pos,    hidden_pos);
    forwardOutput(hidden_pos, out_pos);

    // --- Fase negativa ---
    forwardHidden(in_neg,    hidden_neg);
    forwardOutput(hidden_neg, out_neg);

    // --- Actualiza los pesos de la capa oculta ---
    updateHidden(in_pos,    out_pos, out_neg);
    updateOutput(hidden_pos, out_pos, out_neg);

    // (podrías añadir aquí updateHidden para W2 de forma análoga)
}