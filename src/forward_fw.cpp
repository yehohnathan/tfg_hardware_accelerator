#include "forward_fw.hpp"

// -----------------------------------------------------------------------------
// Constantes de aprendizaje
// -----------------------------------------------------------------------------
bin_t ALPHA  = 1;   // tasa de aprendizaje (paso de peso binario)
acc_t MARGIN = 4;   // umbral mínimo de separación de goodness

// ---------------------------------------------------------------------------
// Función de signo: binariza a +1 o -1
// ---------------------------------------------------------------------------
bin_t signum(acc_t x) {
    return (x >= 0) ? (bin_t)1 : (bin_t)-1;
}

// ---------------------------------------------------------------------------
// Calcula la "bondad" (goodness) de un vector binario: suma de cuadrados
//  g(v) = Σ v_i²  ;  con v_i ∈ {‑1, +1}   ⇒   g ∈ [0, size]
// ---------------------------------------------------------------------------
acc_t computeGoodness(const bin_t vec[], int size) {
    acc_t acc = 0;
    for (int i = 0; i < size; ++i) {
#pragma HLS UNROLL
        acc += (acc_t)vec[i] * (acc_t)vec[i];
    }
    return acc;   // en punto fijo entero (ap_fixed<12,12>)
}

// ---------------------------------------------------------------------------
// Propagación hacia adelante: capa oculta
// ---------------------------------------------------------------------------
void forwardHidden(const bin_t input[N_INPUT],
                   bin_t       hidden[N_HIDDEN],
                   bin_t W1[N_HIDDEN][N_INPUT]) {
    // Para cada neurona j de la capa oculta...
    for(int j = 0; j < N_HIDDEN; j++) {
        acc_t sum = 0;
        // Producto punto input · W1[j]
        for(int i = 0; i < N_INPUT; i++) {
#pragma HLS UNROLL
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
                   bin_t       output[N_OUTPUT],
                   bin_t W2[N_OUTPUT][N_HIDDEN]) {
    for(int k = 0; k < N_OUTPUT; k++) {
        acc_t sum = 0;
        for(int j = 0; j < N_HIDDEN; j++) {
#pragma HLS UNROLL
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
                  const bin_t out_neg[N_HIDDEN],
                  bin_t W1[N_HIDDEN][N_INPUT]) {
    for(int j = 0; j < N_HIDDEN; j++) {
        bin_t delta = out_pos[j] - out_neg[j];
        for(int i = 0; i < N_INPUT; i++) {
            acc_t w_new = (acc_t)W1[j][i] + ALPHA * (acc_t)delta * (acc_t)input[i];
            // Rebinariza a (-1, +1)           
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
                  const bin_t out_neg[N_OUTPUT],
                  bin_t W2[N_OUTPUT][N_HIDDEN]) {
    for(int k = 0; k < N_OUTPUT; k++) {
        bin_t delta = out_pos[k] - out_neg[k];
        for(int j = 0; j < N_HIDDEN; j++) {
#pragma HLS UNROLL
            acc_t w_new = (acc_t)W2[k][j] + ALPHA * (acc_t)delta * (acc_t)hidden[j];
            // Rebinariza a (-1, +1)    
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
                int           sample_idx,
                bin_t         W1[N_HIDDEN][N_INPUT],
                bin_t         W2[N_OUTPUT][N_HIDDEN]) {
    // Mapeo de memorias globales a AXI-Master (pesos externos)
#pragma HLS INTERFACE m_axi port=W1 offset=slave bundle=WEIGHTS depth=N_HIDDEN*N_INPUT
#pragma HLS INTERFACE m_axi port=W2 offset=slave bundle=WEIGHTS depth=N_OUTPUT*N_HIDDEN

    // Interfaces de control por AXI-Lite
#pragma HLS INTERFACE s_axilite port=img_pos    bundle=CTRL depth=N_INPUT
#pragma HLS INTERFACE s_axilite port=img_neg    bundle=CTRL depth=N_INPUT
#pragma HLS INTERFACE s_axilite port=sample_idx bundle=CTRL
#pragma HLS INTERFACE s_axilite port=return     bundle=CTRL

    // 1) Binarizar internamente los vectores de entrada
    bin_t in_pos[N_INPUT], in_neg[N_INPUT];
#pragma HLS ARRAY_PARTITION variable=in_pos complete
#pragma HLS ARRAY_PARTITION variable=in_neg complete

    for(int i = 0; i < N_INPUT; i++) {
#pragma HLS UNROLL
        in_pos[i] = (img_pos[i] > 127) ? (bin_t)1 : (bin_t)-1;
        in_neg[i] = (img_neg[i] > 127) ? (bin_t)1 : (bin_t)-1;
    }

    // 2) Calcula activaciones con los pesos actualizados
    bin_t hidden_pos[N_HIDDEN], hidden_neg[N_HIDDEN];
    bin_t out_pos[N_OUTPUT],    out_neg[N_OUTPUT];
#pragma HLS ARRAY_PARTITION variable=hidden_pos complete
#pragma HLS ARRAY_PARTITION variable=hidden_neg complete
#pragma HLS ARRAY_PARTITION variable=out_pos    complete
#pragma HLS ARRAY_PARTITION variable=out_neg    complete

    // --- Fase positiva ---
    forwardHidden(in_pos,    hidden_pos, W1);
    forwardOutput(hidden_pos, out_pos, W2);

    // --- Fase negativa ---
    forwardHidden(in_neg,    hidden_neg, W1);
    forwardOutput(hidden_neg, out_neg, W2);

    // 3) Calcular goodness de ambas capas
    acc_t g_h_pos = computeGoodness(hidden_pos, N_HIDDEN);
    acc_t g_h_neg = computeGoodness(hidden_neg, N_HIDDEN);
    acc_t g_o_pos = computeGoodness(out_pos,    N_OUTPUT);
    acc_t g_o_neg = computeGoodness(out_neg,    N_OUTPUT);

    // 4) Actualizar pesos sólo si la separación es insuficiente
    if ((g_h_pos - g_h_neg) < MARGIN) {updateHidden(in_pos, out_pos, out_neg, W1);}
    if ((g_o_pos - g_o_neg) < MARGIN) {updateOutput(hidden_pos, out_pos, out_neg, W2);}

    // 4) Salida a terminal
    std::printf("Hidden -> Good Pos:%2d, Neg:%2d, Margin:%2d, Diff:%2d | "
                       "Output -> Good Pos:%2d, Neg:%2d, Margin:%2d, Diff:%2d\n",
                       g_h_pos.to_int(), g_h_neg.to_int(), MARGIN.to_int(), (g_h_pos-g_h_neg).to_int(),
                       g_o_pos.to_int(), g_o_neg.to_int(), MARGIN.to_int(), (g_o_pos-g_o_neg).to_int());

}
