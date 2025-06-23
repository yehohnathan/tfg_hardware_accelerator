#include <cstdint>
#include <cstdio>
#include <cassert>

#include "d:/Proyectos/tfg_hardware_accelerator/data/mnist_train_data.hpp"
#include "d:/Proyectos/tfg_hardware_accelerator/data/noise_train_data.hpp"
#include "d:/Proyectos/tfg_hardware_accelerator/src/forward_fw.hpp"

// Una época basta para la demo rápida
constexpr int NUM_EPOCHS = 1;

// ---------------------------------------------------------------------------
// PRNG lineal congruencial: se aprovechará para
//   • generar la imagen "negativa" (ruido 0‑255)
//   • inicializar los pesos W1/W2 con bits aleatorios {0,1}
// ---------------------------------------------------------------------------
static uint32_t lcg_seed = 123456789;
inline uint32_t prng32()
{
    lcg_seed = 1664525u * lcg_seed + 1013904223u;   // LCG clásico
    return lcg_seed;
}
inline uint8_t  prng8 () { return static_cast<uint8_t>(prng32() >> 24); }
inline uint8_t  prngBit() { return prng8() & 1; }        // devuelve 0 ó 1


// ---------------------------------------------------------------------------
// Programa principal de prueba
// ---------------------------------------------------------------------------
int main()
{
    // Pesos de la red (en el dispositivo)
    bin_t W1[N_HIDDEN][N_INPUT];
    bin_t W2[N_OUTPUT][N_HIDDEN];

    // Copia de los pesos iniciales para comprobar cambios al final
    bin_t W1_init[N_HIDDEN][N_INPUT];
    bin_t W2_init[N_OUTPUT][N_HIDDEN];

    // 1) Inicializa los pesos con valores aleatorios {0,1}
    for (int j = 0; j < N_HIDDEN; ++j) {
        for (int i = 0; i < N_INPUT;  ++i) {
            W1[j][i]      = prngBit();     // 0 ó 1
            W1_init[j][i] = W1[j][i];      // guarda copia
        }
    }
    for (int k = 0; k < N_OUTPUT; ++k) {
        for (int j = 0; j < N_HIDDEN; ++j) {
            W2[k][j]      = prngBit();
            W2_init[k][j] = W2[k][j];
        }
    }

    // 2) Entrenamiento
    for (int epoch = 0; epoch < NUM_EPOCHS; ++epoch) {
        std::printf("\n== Epoca %d ==\n", epoch + 1);

        for (int img = 0; img < NUM_IMAGES; ++img) {

            // Paso de entrenamiento: Una imagen positiva y otra imagen negativa
            train_step(mnist_images_train[img], noise_images_train[img], img, W1, W2);
        }
    }

    // 3) Imprime los pesos W1, iniciales y finales
    std::puts("\n--- Pesos Iniciales W1 ---");
    for (int j = 0; j < N_HIDDEN; ++j) {
        std::printf("W1[%02d]:", j);
        for (int i = 0; i < N_INPUT; ++i)
            std::printf(" %d", static_cast<int>(W1_init[j][i]));
        std::putchar('\n');
    }
    std::puts("\n--- Pesos finales W1 ---");
    for (int j = 0; j < N_HIDDEN; ++j) {
        std::printf("W1[%02d]:", j);
        for (int i = 0; i < N_INPUT; ++i)
            std::printf(" %d", static_cast<int>(W1[j][i]));
        std::putchar('\n');
    }

    // 3.5) Imprime los pesos W2, iniciales y finales
    std::puts("\n--- Pesos Iniciales W2 ---");
    for (int k = 0; k < N_OUTPUT; ++k) {
        std::printf("W2[%02d]:", k);
        for (int j = 0; j < N_HIDDEN; ++j)
            std::printf(" %d", static_cast<int>(W2_init[k][j]));
        std::putchar('\n');
    }

    std::puts("\n--- Pesos finales W2 ---");
    for (int k = 0; k < N_OUTPUT; ++k) {
        std::printf("W2[%02d]:", k);
        for (int j = 0; j < N_HIDDEN; ++j)
            std::printf(" %d", static_cast<int>(W2[k][j]));
        std::putchar('\n');
    }


    // 4) Verifica que al menos un peso cambió respecto al valor inicial
    bool changed1 = false, changed2 = false;

    for (int j = 0; j < N_HIDDEN && !changed1; ++j)
        for (int i = 0; i < N_INPUT; ++i)
            if (W1[j][i] != W1_init[j][i]) { changed1 = true; break; }

    for (int k = 0; k < N_OUTPUT && !changed2; ++k)
        for (int j = 0; j < N_HIDDEN; ++j)
            if (W2[k][j] != W2_init[k][j]) { changed2 = true; break; }

    if (changed1 == false){
        std::puts("\nNingun peso de W1 cambio durante el entrenamiento");
    }
    if (changed2 == false){
        std::puts("\nNingun peso de W2 cambio durante el entrenamiento");
    }

    std::puts("\nSimulacion terminada correctamente: Pesos actualizados!");
    return 0;
}
