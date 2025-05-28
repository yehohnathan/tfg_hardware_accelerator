#pragma once
#include <ap_fixed.h>
#include <ap_int.h>
#include <cstdint>
#include <cstdio>
#include <cassert>

// ---------------------------------------------------------------------------
// INCLUYE EL DATASET -> define NUM_IMAGES y N_INPUT de forma automática
// ---------------------------------------------------------------------------
#include "d:/Proyectos/tfg_hardware_accelerator/data/mnist_train_data.hpp"

// Dimensiones de la red
constexpr int N_HIDDEN  = 32;    // número de neuronas ocultas
constexpr int N_OUTPUT  = 10;    // número de neuronas de salida

// ---------------------------------------------------------------------------
// Tipos de datos
// ---------------------------------------------------------------------------
// bin_t : pesos/activaciones en {0,1}
// acc_t : acumulador para productos y sumas
using bin_t = int;   // 0-1
using acc_t = int;       // entero con rango más que suficiente

// ---------------------------------------------------------------------------
// API de la librería
// ---------------------------------------------------------------------------
bin_t signum(acc_t x);
void forwardHidden (const bin_t input[N_INPUT],    bin_t hidden[N_HIDDEN], bin_t W1[N_HIDDEN][N_INPUT]);
void forwardOutput (const bin_t hidden[N_HIDDEN], bin_t output[N_OUTPUT], bin_t W2[N_OUTPUT][N_HIDDEN]);
acc_t computeGoodness(const bin_t vec[], int size);
void updateHidden  (const bin_t input[N_INPUT],
                    const bin_t out_pos[N_HIDDEN],
                    const bin_t out_neg[N_HIDDEN],
                    bin_t W1[N_HIDDEN][N_INPUT]);
void updateOutput  (const bin_t hidden[N_HIDDEN],
                    const bin_t out_pos[N_OUTPUT],
                    const bin_t out_neg[N_OUTPUT],
                    bin_t W2[N_OUTPUT][N_HIDDEN]);

// ---------------------------------------------------------------------------
// Top-level para síntesis en Vitis HLS
// ---------------------------------------------------------------------------
// Recibe una muestra positva (img_pos) y una muestra negativa (img_neg),
// el índice de muestra (sample_idx) y actualiza W1 y W2 in situ.
// El mapeo a AXI-Master se hace con pragmas en la implementación .cpp.
void train_step(const uint8_t img_pos[N_INPUT],
                const uint8_t img_neg[N_INPUT],
                int           sample_idx,
                bin_t         W1[N_HIDDEN][N_INPUT],
                bin_t         W2[N_OUTPUT][N_HIDDEN]);
