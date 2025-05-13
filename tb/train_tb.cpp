#include <cassert>
#include <cstdio>
#include <cstdint>
#include <ap_int.h>

#include "d:/Proyectos/tfg_hardware_accelerator/data/mnist_train_data.hpp"      // define NUM_IMAGES, mnist_images_train
#include "d:/Proyectos/tfg_hardware_accelerator/src/forward_fw.hpp"

// Epochs para prueba rápida
constexpr int NUM_EPOCHS = 1;

int main() {
    // Buffers de salida para pesos leídos vía AXI-Master (simulados como arrays)
    bin_t W1_out[N_HIDDEN][N_INPUT];
    bin_t W2_out[N_OUTPUT][N_HIDDEN];
    
    // Copia inicial de W1 (todo +1)
    for (int j = 0; j < N_HIDDEN; ++j)
        for (int i = 0; i < N_INPUT; ++i)
            W1[j][i] = bin_t(1);

    // Entrenamiento
    for (int epoch = 0; epoch < NUM_EPOCHS; ++epoch) {
        std::printf("== Epoca %d ==\n", epoch);

        for (int img = 0; img < NUM_IMAGES; ++img) {
            // 1) Binarizar la muestra
            bin_t pos[N_INPUT], neg[N_INPUT];
            for (int i = 0; i < N_INPUT; ++i) {
                uint8_t p = mnist_images_train[img][i];
                pos[i] = (p > 127) ? bin_t(1) : bin_t(-1);
                neg[i] = ((255 - p) > 127) ? bin_t(1) : bin_t(-1);
            }

            // 2) Ejecutar un paso de entrenamiento
            train_step(pos, neg,
                       (epoch == NUM_EPOCHS - 1 && img == NUM_IMAGES - 1),
                       W1_out, W2_out,
                       img);

            // 3) Muestra estado cada 10 muestras
            if (img % 10 == 0) {
                ap_uint<4> tmp_leds = leds;
                unsigned   led_val  = tmp_leds.to_uint();
                std::printf("img %2d -> LED=0x%X, W1_out[0][0]=%d\n",
                            img, led_val, static_cast<int>(W1_out[0][0]));
            }
        }
    }

    // Verifica que al menos un peso cambió
    assert(W1_out[0][0] != bin_t(1) &&
           "El primer peso nunca cambio: updateHidden podria fallar");

    std::puts("Simulacion C finalizo OK. Pesos actualizados y LEDs generados.");
    return 0;
}