#include "forward_fw.hpp"

// -----------------------------------------------------------------------------
// Constantes de aprendizaje
// -----------------------------------------------------------------------------
constexpr bin_t ALPHA  = 1;   // tasa de aprendizaje (paso de peso binario)
constexpr acc_t MARGIN = 4;   // umbral mínimo de separación de goodness


// ---------------------------------------------------------------------------
// Binarizador con umbral: devuelve 1 si sum >= threshold, 0 en otro caso
//
// Parámetros
//   sum        : acumulador con la suma ponderada de la neurona.
//   threshold  : umbral a partir del cual se considera que la neurona se activa.
//
// Retorna
//   1 si sum >= threshold, 0 en caso contrario.
// ---------------------------------------------------------------------------
bin_t signum(acc_t sum, acc_t threshold) {

    return (sum >= threshold) ? 1 : 0;
}

// ---------------------------------------------------------------------------
// Calcula la "bondad" (goodness) de un vector binario: suma de cuadrados
//   g(v) = Σ v_i²  ;  con v_i ∈ {0, 1}   ⇒   g ∈ [0, size]
//   Dado que 0² = 0 y 1² = 1, no hace falta multiplicar elevar: g(v) = Σ v_i
//
// Parámetros
//   vec  : vector binario de entrada (activaciones de la capa)
//   size : número de elementos del vector (dimensión de la capa)
//
// Retorna
//   Número de unos del vector, que mide la "bondad" de la capa.
// ---------------------------------------------------------------------------
acc_t computeGoodness(const bin_t vec[], int size) {

    acc_t acc = 0;
    for (int i = 0; i < size; ++i) {
#pragma HLS UNROLL
        acc += vec[i];
    }
    return acc;   // ∈ [0, size]
}

// ---------------------------------------------------------------------------
// Propagación hacia la capa oculta.
//   input[i] ∈ {0, 1}  ;  W1[j][i] ∈ {0, 1}
//
// Parámetros
//   input  : vector binario 0/1 de la imagen de entrada (N_INPUT elementos).
//   hidden : vector 0/1 de salida de la capa oculta (N_HIDDEN elementos).
//            Se escribe dentro de la función.
//   W1     : matriz de pesos (N_HIDDEN x N_INPUT) binarios 0/1.
//
// Cada neurona calcula la suma ponderada de sus entradas y se activa si el
// resultado supera el umbral TH (mayoría simple).
// ---------------------------------------------------------------------------
void forwardHidden(const bin_t input[N_INPUT],
                   bin_t       hidden[N_HIDDEN],
                   bin_t W1[N_HIDDEN][N_INPUT]) {

    // Umbral de activación utilizado cuando cada neurona se binariza de {0, 1}
    // -- La neurona se activará solo cuando la "mayoría simple" de las entradas estén en 1
    // -- FF necesita una regla de actvación y esta es una muy simple cuando se usa {0, 1}
    const acc_t TH = N_INPUT / 5;

    // Para cada neurona j de la capa oculta...
    for (int j = 0; j < N_HIDDEN; ++j) {
        acc_t sum = 0;
        for (int i = 0; i < N_INPUT; ++i) {
#pragma HLS UNROLL
            sum += input[i] * W1[j][i];         // Aplico una AND
        }
        // Binariza la salida
        hidden[j] = signum(sum, TH);
    }
}

// ---------------------------------------------------------------------------
// Propagación hacia la capa de salida.
//
// Parámetros
//   hidden : vector 0/1 de activaciones de la capa oculta (N_HIDDEN).
//   output : vector 0/1 de la capa de salida (N_OUTPUT). Se sobrescribe.
//   W2     : matriz de pesos (N_OUTPUT x N_HIDDEN) binarios 0/1.
// ---------------------------------------------------------------------------
void forwardOutput(const bin_t hidden[N_HIDDEN],
                   bin_t       output[N_OUTPUT],
                   bin_t       W2[N_OUTPUT][N_HIDDEN])
{
    const acc_t TH = N_HIDDEN / 2;
    for (int k = 0; k < N_OUTPUT; ++k) {
        acc_t sum = 0;
        for (int j = 0; j < N_HIDDEN; ++j) {
#pragma HLS UNROLL
            sum += hidden[j] * W2[k][j];
        }
        output[k] = signum(sum, TH);
    }
}

// ---------------------------------------------------------------------------
// Actualización local de la matriz de pesos W1 (capa oculta).
//
// Parámetros
//   input    : vector 0/1 de la imagen positiva utilizada en la fase de
//              aprendizaje (N_INPUT). Dado que queremos que clasifique bien
//              unicamente imagen reales, no se usan datos negativos.
//   out_pos  : activaciones 0/1 de la capa oculta para la imagen positiva.
//   out_neg  : activaciones 0/1 de la capa oculta para la imagen negativa.
//   W1       : matriz de pesos (N_HIDDEN x N_INPUT) que se modifica in‑situ.
//
// Algoritmo
//   • delta = out_pos − out_neg  ∈ {‑1,0,+1} para cada neurona.
//   • Si delta  > 0  ⇒   los pesos conectados a entradas activas se fijan a 1.
//   • Si delta  < 0  ⇒   los pesos conectados a entradas activas se fijan a 0.
//   • Si delta == 0  ⇒   no hay cambio (la separación ya es suficiente).
// ---------------------------------------------------------------------------
void updateHidden(const bin_t input[N_INPUT],
                  const bin_t out_pos[N_HIDDEN],
                  const bin_t out_neg[N_HIDDEN],
                  bin_t       W1[N_HIDDEN][N_INPUT]) {
    for (int j = 0; j < N_HIDDEN; ++j) {
        int delta = out_pos[j] - out_neg[j];
        if (delta == 0) continue;                   // {-1,0,+1}
        for (int i = 0; i < N_INPUT; ++i) {         // nada que hacer
#pragma HLS UNROLL
            if (input[i] == 0) continue;            // peso no participa si entrada=0
            W1[j][i] = (delta > 0) ? 1 : 0;         // refuerza o debilita la sinapsis
        }
    }
}

// ---------------------------------------------------------------------------
// Actualización local de la matriz de pesos W2 (capa de salida)
//
// Parámetros
//   hidden   : vector 0/1 con activaciones de la capa oculta.
//   out_pos  : activaciones 0/1 de la capa de salida para la imagen positiva.
//   out_neg  : activaciones 0/1 de la capa de salida para la imagen negativa.
//   W2       : matriz de pesos (N_OUTPUT x N_HIDDEN) que se modifica in‑situ.
// ---------------------------------------------------------------------------
void updateOutput(const bin_t hidden[N_HIDDEN],
                  const bin_t out_pos[N_OUTPUT],
                  const bin_t out_neg[N_OUTPUT],
                  bin_t W2[N_OUTPUT][N_HIDDEN]) {
    for (int k = 0; k < N_OUTPUT; ++k) {
        int delta = out_pos[k] - out_neg[k];
        if (delta == 0) continue;
        for (int j = 0; j < N_HIDDEN; ++j) {
#pragma HLS UNROLL
            if (hidden[j] == 0) continue;
            W2[k][j] = (delta > 0) ? 1 : 0;
        }
    }
}

// ---------------------------------------------------------------------------
// Función top‑level sintetizable: ejecuta un único paso de entrenamiento.
//
// Parámetros
//   img_pos : imagen positiva (muestra real) en escala de grises 0‑255.
//   img_neg : imagen negativa (ruido o muestra de otra clase).
//   sample_idx : índice opcional de la muestra (no se usa en lógica).
//   W1      : matriz de pesos de la capa oculta que vive en memoria externa.
//   W2      : matriz de pesos de la capa de salida que vive en memoria externa.
//
// E/S AXI
//   • W1 y W2 se mapearán como puertos AXI‑Master para acceder a DDR.
//   • Las imágenes se pasan por AXI‑Lite (memoria transferida por el host).
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

    for (int i = 0; i < N_INPUT; ++i) {
#pragma HLS UNROLL
        in_pos[i] = (img_pos[i] > 127) ? 1 : 0;
        in_neg[i] = (img_neg[i] > 127) ? 1 : 0;
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
                       g_h_pos, g_h_neg, MARGIN, (g_h_pos-g_h_neg),
                       g_o_pos, g_o_neg, MARGIN, (g_o_pos-g_o_neg));

}
