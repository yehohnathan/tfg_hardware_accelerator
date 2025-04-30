#include "../data/mnist_data.h"     // debe exponer mnist_images[][784] y NUM_IMAGES
#include "../src/forward_fw.hpp"

constexpr int NUM_EPOCHS = 1;       // ajusta según necesidad

int main() {
    for (int epoch = 0; epoch < NUM_EPOCHS; ++epoch) {
        for (int img = 0; img < NUM_IMAGES; ++img) {

            // Construir positivas/negativas en formato bin_t
            bin_t pos[N_INPUT];
            bin_t neg[N_INPUT];
            for (int i = 0; i < N_INPUT; ++i) {
                uint8_t p = mnist_images[img][i];
                pos[i] = (p > 127) ? bin_t(1) : bin_t(-1);      // binariza
                neg[i] = (255 - p > 127) ? bin_t(1) : bin_t(-1); // invertida
            }

            // Llamada a la función top-level
            train_step(pos, neg, (epoch == NUM_EPOCHS-1 && img == NUM_IMAGES-1));
        }
    }
    return 0;
}
