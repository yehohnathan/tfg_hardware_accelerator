#pragma once
#include <ap_fixed.h>
#include <ap_int.h> 
#include <cstdint>   // Para uint32_t

// ---------------------------------------------------------------------------
// INCLUYE EL DATASET -> define NUM_IMAGES y N_INPUT de forma automática
// ---------------------------------------------------------------------------
#include "d:/Proyectos/tfg_hardware_accelerator/data/mnist_train_data.hpp" 

// Dimensiones de la red (oculta y salida)
constexpr int N_HIDDEN  = 4;
constexpr int N_OUTPUT  = 1;

// Tipos de datos (definiciones coherentes con .cpp)
using bin_t = ap_fixed<8,8>;
using acc_t = ap_fixed<12,12>;

// Declaraciones de matrices de pesos (definidas en forward_fw.cpp)
extern bin_t W1[N_HIDDEN][N_INPUT];
extern bin_t W2[N_OUTPUT][N_HIDDEN];

// Puerto LED (salida de 4 bits)
extern volatile ap_uint<4> leds;

// API de la librería
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
void train_step(const bin_t img_pos[N_INPUT],
                const bin_t img_neg[N_INPUT],
                int         last_sample,
                bin_t       W1_out[N_HIDDEN][N_INPUT],
                bin_t       W2_out[N_OUTPUT][N_HIDDEN],
                int         sample_idx);