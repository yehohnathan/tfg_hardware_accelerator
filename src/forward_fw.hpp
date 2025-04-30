#pragma once
#include <ap_fixed.h>

// Dimensiones de la red
constexpr int N_INPUT  = 784;
constexpr int N_HIDDEN = 128;
constexpr int N_OUTPUT = 1;

// Tipos de datos
using bin_t = ap_fixed<8,8>;
using acc_t = ap_fixed<12,12>;

// Matrices de pesos (definidas en forward_fw.cpp)
extern bin_t W1[N_HIDDEN][N_INPUT];
extern bin_t W2[N_OUTPUT][N_HIDDEN];

// Funciones de la librería
bin_t signum(acc_t x);

void forwardHidden(const bin_t input[N_INPUT],    // in
                   bin_t       hidden[N_HIDDEN]); // out

void forwardOutput(const bin_t hidden[N_HIDDEN],  // in
                   bin_t       output[N_OUTPUT]); // out

acc_t computeGoodness(const bin_t vec[], int size);

void updateHidden(const bin_t input[N_INPUT],
                  const bin_t out_pos[N_HIDDEN],
                  const bin_t out_neg[N_HIDDEN]);

// --- TOP-LEVEL para síntesis ---
void train_step(const bin_t  img_pos[N_INPUT],
                const bin_t  img_neg[N_INPUT],
                int          last_sample);
