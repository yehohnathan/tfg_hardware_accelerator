# ================================ LIBRERÍAS ================================ #
import numpy as np
from tensorflow.keras.datasets import mnist


# ================================ FUNCIONES ================================ #
def load_mnist_data():
    """
    Descarga el conjunto MNIST y normaliza los valores de píxel a
    uint8 (0–255).
    Retorna:
        (x_train, y_train), (x_test, y_test)
    donde x_*.shape = (N, 28, 28) y y_*.shape = (N,).
    """
    (x_train, y_train), (x_test, y_test) = mnist.load_data()
    # Convertir a uint8 (0–255)
    x_train = x_train.astype(np.uint8)
    x_test = x_test.astype(np.uint8)
    y_train = y_train.astype(np.uint8)
    y_test = y_test.astype(np.uint8)
    return (x_train, y_train), (x_test, y_test)


def create_mnist_header(x_data, y_data, samples_per_digit,
                        header_filename="mnist_data.h"):
    """
    Selecciona `samples_per_digit` imágenes de cada dígito (0–9) y genera un
    archivo de cabecera C++ con arreglos estáticos de tipo uint8_t.

    Args:
      x_data (np.ndarray): imágenes de forma (N, 28, 28), dtype uint8.
      y_data (np.ndarray): etiquetas de forma (N,), dtype uint8.
      samples_per_digit (int): # de muestras a extraer por cada dígito 0–9.
      header_filename (str): ruta del archivo .h de salida.
    """
    # Diccionario para acumular listas de imágenes por dígito
    digits = {d: [] for d in range(10)}

    # Recorremos el dataset y vamos llenando hasta alcanzar la cuota por dígito
    for img, lbl in zip(x_data, y_data):
        if len(digits[lbl]) < samples_per_digit:
            digits[lbl].append(img.flatten())
        # Si ya tenemos suficientes de todos, terminamos
        if all(len(digits[d]) >= samples_per_digit for d in digits):
            break

    # Abrimos el archivo de cabecera y escribimos los arrays
    with open(header_filename, "w") as f:
        f.write("// Auto-generated MNIST data header\n\n")
        for d in range(10):
            for idx, flat in enumerate(digits[d]):
                arr_name = f"img_{d}_{idx}"
                f.write(f"// Digito {d}, muestra {idx}\n")
                f.write(f"const uint8_t {arr_name}[784] = {{\n")
                # Escribimos 28 valores por línea para legibilidad
                for i in range(0, 784, 28):
                    line = ", ".join(f"{v}" for v in flat[i:i+28])
                    f.write("    " + line + ",\n")
                f.write("};\n\n")
        f.write(f"// Total samples per digit: {samples_per_digit}\n")

    print(f"[+] Header generado: '{header_filename}' con {samples_per_digit}"
          " muestras por dígito.")


# =================================== MAIN ================================== #
if __name__ == "__main__":
    # Ejemplo de uso:
    (x_train, y_train), (x_test, y_test) = load_mnist_data()
    # Genera 100 muestras de cada dígito en mnist_data.h
    create_mnist_header(x_train, y_train, samples_per_digit=500,
                        header_filename="mnist_data.h")
