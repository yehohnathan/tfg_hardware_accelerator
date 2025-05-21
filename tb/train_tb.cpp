#include <cassert>
#include <cstdio>
#include <cstdint>
#include <ap_int.h>

#include "d:/Proyectos/tfg_hardware_accelerator/data/mnist_train_data.hpp" // NUM_IMAGES, N_INPUT, mnist_images_train
#include "d:/Proyectos/tfg_hardware_accelerator/src/forward_fw.hpp"       // declaración de train_step y bin_t

// Epochs para prueba rápida
constexpr int NUM_EPOCHS = 1;

// ---------------------------------------------------------------------------
// Pseudo-aleatorio para datos negativos (0–255)
// ---------------------------------------------------------------------------
static uint32_t lcg_seed = 123456789;
inline uint8_t prng8() {
    // LCG: X_{n+1} = (a X_n + c) mod 2^32
    lcg_seed = 1664525u * lcg_seed + 1013904223u;
    return static_cast<uint8_t>(lcg_seed >> 24);
}

// Genera un vector de ruido como muestra negativa
inline void genNegativeData(uint8_t neg[N_INPUT]) {
    for (int i = 0; i < N_INPUT; ++i) {
        neg[i] = prng8();
    }
}

// ---------------------------------------------------------------------------
// Main
// ---------------------------------------------------------------------------
int main() {
    // Variables de pesos
    bin_t W1[N_HIDDEN][N_INPUT];    // matriz de pesos capa oculta
    bin_t W2[N_OUTPUT][N_HIDDEN];   // matriz de pesos capa de salida
    // Buffers de salida para pesos (mapeados desde AXI-Master)
    bin_t W1_out[N_HIDDEN][N_INPUT];
    bin_t W2_out[N_OUTPUT][N_HIDDEN];

    // 1) Inicializar pesos W1 y W2 a +1
    for (int j = 0; j < N_HIDDEN; ++j)
        for (int i = 0; i < N_INPUT; ++i)
            W1[j][i] = bin_t(1);
    for (int k = 0; k < N_OUTPUT; ++k)
        for (int j = 0; j < N_HIDDEN; ++j)
            W2[k][j] = bin_t(1);

    // 2) Entrenamiento
    for (int epoch = 0; epoch < NUM_EPOCHS; ++epoch) {
        std::printf("== Epoca %d ==\n", epoch + 1);

        for (int img = 0; img < NUM_IMAGES; ++img) {
            // 2.1) Preparar vectores en [0..255] para datos positivos reales y datos negativos imaginarios
            uint8_t pos[N_INPUT], neg[N_INPUT];
            for(int i=0;i<N_INPUT;i++)
                pos[i] = mnist_images_train[img][i];
            genNegativeData(neg);

            // 2.2) Ejecutar paso de entrenamiento (actualiza W1 y W2 en HLS)
            train_step(pos, neg, img, W1, W2);

            // 2.3) Leer pesos recién actualizados
            for (int j = 0; j < N_HIDDEN; ++j)
                for (int i = 0; i < N_INPUT; ++i)
                    W1_out[j][i] = W1[j][i];
            for (int k = 0; k < N_OUTPUT; ++k)
                for (int j = 0; j < N_HIDDEN; ++j)
                    W2_out[k][j] = W2[k][j];

            // 2.4) Imprimir todas las entradas de W1 y W2
            /*
            std::printf("-- Despues de img %2d --\n", img);
            for (int j = 0; j < N_HIDDEN; ++j) {
                std::printf(" W1[%d]:", j);
                for (int i = 0; i < N_INPUT; ++i)
                    std::printf(" %d", static_cast<int>(W1_out[j][i]));
                std::printf("\n");
            }
            for (int k = 0; k < N_OUTPUT; ++k) {
                std::printf(" W2[%d]:", k);
                for (int j = 0; j < N_HIDDEN; ++j)
                    std::printf(" %d", static_cast<int>(W2_out[k][j]));
                std::printf("\n");
            }
            */
        }

        // 3) Imprimir todos los pesos al final de la época
        std::puts("\nPesos finales tras la epoca:");
        for (int j = 0; j < N_HIDDEN; ++j) {
            std::printf(" W1[%d]:", j);
            for (int i = 0; i < N_INPUT; ++i)
                std::printf(" %d", static_cast<int>(W1_out[j][i]));
            std::printf("\n");
        }
        for (int k = 0; k < N_OUTPUT; ++k) {
            std::printf(" W2[%d]:", k);
            for (int j = 0; j < N_HIDDEN; ++j)
                std::printf(" %d", static_cast<int>(W2_out[k][j]));
            std::printf("\n");
        }
    }

    // 4) Verificación de cambio en los pesos (global, no por fila)
    bool changed1 = false, changed2 = false;

    // Recorremos todo W1 y ponemos a true changed1 en cuanto encontremos alguna diferencia
    for (int j = 0; j < N_HIDDEN && !changed1; ++j) {
        for (int i = 0; i < N_INPUT; ++i) {
            if (W1_out[j][i] != bin_t(1)) {
                changed1 = true;
                break;
            }
        }
    }

    // Recorremos todo W2 y ponemos a true changed2 en cuanto encontremos alguna diferencia
    for (int k = 0; k < N_OUTPUT && !changed2; ++k) {
        for (int j = 0; j < N_HIDDEN; ++j) {
            if (W2_out[k][j] != bin_t(1)) {
                changed2 = true;
                break;
            }
        }
    }

    // Ahora sólo comprobamos dos booleans, no uno por cada fila
    assert(changed1 && "Ningun peso de W1 cambio durante el entrenamiento");
    assert(changed2 && "Ningun peso de W2 cambio durante el entrenamiento");

    std::puts("Simulacion finalizada OK. Pesos actualizados correctamente.");
    return 0;
}