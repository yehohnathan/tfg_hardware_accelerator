# ================================ LIBRERÍAS ================================ #
import numpy as np
from tensorflow.keras.datasets import mnist          # type: ignore
from pathlib import Path


# ================================ FUNCIONES ================================ #
def load_mnist_data():
    """Devuelve MNIST como uint8."""
    (x_train, y_train), (x_test, y_test) = mnist.load_data()
    return (x_train.astype(np.uint8), y_train.astype(np.uint8)), (
        x_test.astype(np.uint8), y_test.astype(np.uint8)
    )


def top_var_indices(x_full, k):
    """
    Calcula la varianza por píxel (sobre todas las imágenes) y
    devuelve los `k` índices con mayor varianza.
    """
    var_per_pixel = x_full.reshape(-1, 784).var(axis=0)
    return np.argsort(var_per_pixel)[-k:][::-1]  # descendente


def create_mnist_header(
    x_data,
    y_data,
    samples_per_digit,
    header_filename="mnist_data.hpp",
    var_name="mnist_images",
    input_dim=8,
    selected_idx=None,
):
    """
    Genera un header con las imágenes reducidas a `input_dim` componentes.
    Si `selected_idx` es None, se calculan a partir de `x_data`.
    """
    # ---------- selección de índices de interés ----------
    if selected_idx is None:
        selected_idx = top_var_indices(x_data, input_dim)
    selected_idx = np.asarray(selected_idx, dtype=np.int32)

    # ---------- recolectar muestras ----------
    digits = {d: [] for d in range(10)}
    for img, lbl in zip(x_data, y_data):
        if len(digits[lbl]) < samples_per_digit:
            flat = img.flatten().take(selected_idx)
            digits[lbl].append(flat)
        if all(len(digits[d]) >= samples_per_digit for d in digits):
            break

    all_images = np.vstack([digits[d] for d in range(10)])
    total = all_images.shape[0]

    # ---------- escribir header ----------
    guard = Path(header_filename).name.replace(".", "_").upper()
    with open(header_filename, "w") as f:
        f.write(f"// Auto-generated MNIST header: {header_filename}\n")
        f.write(f"#ifndef {guard}\n#define {guard}\n\n")
        f.write("#include <cstdint>\n\n")
        f.write(f"static constexpr int NUM_IMAGES = {total};\n")
        f.write(f"static constexpr int N_INPUT    = {input_dim};\n\n")
        # opcional: exponer los índices por si quieres depurar
        f.write("static const uint16_t MNIST_IDX[N_INPUT] = {")
        f.write(", ".join(map(str, selected_idx)))
        f.write("};\n\n")
        # array principal
        f.write(
            f"static const uint8_t {var_name}[NUM_IMAGES][N_INPUT] = {{\n"
        )
        for row in all_images:
            vals = ", ".join(map(str, row))
            f.write(f"    {{{vals}}},\n")
        f.write("};\n\n#endif // " + guard + "\n")

    print(
        f"[+] {header_filename}: {total} imágenes, N_INPUT={input_dim}, "
        f"índices seleccionados = {selected_idx.tolist()}"
    )
    return selected_idx  # por si quieres reutilizarlos


# =================================== MAIN ================================== #
if __name__ == "__main__":
    (x_train, y_train), (x_test, y_test) = load_mnist_data()

    # --- parámetros ---
    N_INPUT = 8          # ↔ constexpr int N_INPUT en tu HLS
    SAMPLES = 5          # por dígito

    # --- entrenamiento ---
    idx = create_mnist_header(
        x_train,
        y_train,
        samples_per_digit=SAMPLES,
        header_filename="mnist_train_data.hpp",
        var_name="mnist_images_train",
        input_dim=N_INPUT,
        selected_idx=None,          # se calcula aquí
    )

    # --- prueba ---
    create_mnist_header(
        x_test,
        y_test,
        samples_per_digit=SAMPLES,
        header_filename="mnist_test_data.hpp",
        var_name="mnist_images_test",
        input_dim=N_INPUT,
        selected_idx=idx,           # reutiliza los mismos píxeles
    )
