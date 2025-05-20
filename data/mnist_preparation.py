# ================================ LIBRERÍAS ================================ #
import numpy as np
from tensorflow.keras.datasets import mnist          # type: ignore


# ============================ FUNCIONES PROPIAS ============================ #
def load_mnist_data():
    """Devuelve MNIST como uint8."""
    (x_train, y_train), (x_test, y_test) = mnist.load_data()
    return (x_train.astype(np.uint8), y_train.astype(np.uint8)), (
        x_test.astype(np.uint8), y_test.astype(np.uint8)
    )


def samples_per_digit_mc(x_data, y_data, samples_per_digit=10):
    number_sample = 0
    counter = 0

    data = {0: [], 1: [], 2: [],
            3: [], 4: [], 5: [],
            6: [], 7: [], 8: [],
            9: []}

    while number_sample <= 9:
        while len(data[number_sample]) < samples_per_digit:
            if y_data[counter] == number_sample:
                data[number_sample].append(x_data[counter])
                counter += 1
            else:
                counter += 1
        number_sample += 1

    return data


# ====================== FUNCIONES OPTIMIZADAS CHATGPT ====================== #
def samples_per_digit(x_data, y_data, samples_per_digit=10):
    """Para cada dígito 0–9, busca sus índices y toma las primeras
      `samples_per_digit`."""
    data = {}
    for digit in range(10):
        # flatnonzero es más rápido que np.where
        idx = np.flatnonzero(y_data == digit)[:samples_per_digit]
        data[digit] = x_data[idx]
    return data


def resize_data(data: dict[int, np.ndarray], columns: int,
                rows: int, method: str = 'mean') -> dict[int, np.ndarray]:
    """
    Redimensiona cada sample en `data` a una grilla de tamaño (rows, columns)
    usando el método especificado:
      - 'mean': promedio entero
      - 'median': mediana del bloque
      - 'max': valor máximo del bloque

    Parámetros
    ----------
    data : dict[int, np.ndarray]
        Diccionario {digit: array(n_samples, 28, 28)} de tipo uint8.
    columns : int
        Número deseado de columnas (4 ≤ columns ≤ 28).
    rows : int
        Número deseado de filas    (4 ≤ rows ≤ 28).
    method : str
        Método de reducción ('mean', 'median', 'max').

    Retorna
    -------
    dict[int, np.ndarray]
        Diccionario con imágenes de forma (n_samples, rows, columns)
        tipo uint8.
    """
    # Validación de método
    if method not in ('mean', 'median', 'max'):
        raise ValueError(
            f"method debe ser 'mean', 'median' o 'max'; got {method}")

    # Validación de rango
    if not (4 <= columns <= 28) or not (4 <= rows <= 28):
        raise ValueError("columns y rows deben estar entre 4 y 28 inclusive.")

    # Bordes de bloques
    row_edges = np.linspace(0, 28, rows + 1)
    col_edges = np.linspace(0, 28, columns + 1)

    resized = {}
    for digit, imgs in data.items():
        n_samples = imgs.shape[0]
        out = np.empty((n_samples, rows, columns), dtype=np.uint8)

        for k in range(n_samples):
            img = imgs[k]
            for i in range(rows):
                y0 = int(np.floor(row_edges[i]))
                y1 = int(np.ceil(row_edges[i+1]))
                for j in range(columns):
                    x0 = int(np.floor(col_edges[j]))
                    x1 = int(np.ceil(col_edges[j+1]))
                    block = img[y0:y1, x0:x1]
                    if method == 'mean':
                        val = int(block.sum()) // ((y1 - y0) * (x1 - x0))
                    elif method == 'median':
                        val = int(np.median(block))
                    else:  # 'max'
                        val = int(block.max())
                    out[k, i, j] = val

        resized[digit] = out

    return resized


def create_mnist_header(
    data: dict[int, np.ndarray],
    header_filename: str = "mnist_data.hpp",
    var_name: str = "mnist_images"
):
    """
    Genera un archivo .hpp con las imágenes MNIST a partir de `data`.

    Parameters
    ----------
    data : dict[int, np.ndarray]
        Diccionario {digit: array(n_samples, R, C)} con valores uint8.
    header_filename : str
        Nombre de archivo de salida (.hpp).
    var_name : str
        Nombre de la variable en C++.
    """
    # Cálculos básicos
    # Flatten images y orden: por dígito ascendente y muestras en orden
    flat_images = []
    for digit in sorted(data.keys()):
        imgs = data[digit]
        n_samples, R, C = imgs.shape
        for k in range(n_samples):
            flat = imgs[k].reshape(R * C)
            flat_images.append(flat.tolist())

    NUM_IMAGES = len(flat_images)
    N_INPUT = R * C

    guard = header_filename.replace('.', '_').upper()
    with open(header_filename, 'w', encoding='utf-8') as f:
        f.write(f"// Auto-generated MNIST header: {header_filename}\n")
        f.write(f"#ifndef {guard}\n")
        f.write(f"#define {guard}\n\n")
        f.write("#include <cstdint>\n\n")
        f.write(f"static constexpr int NUM_IMAGES = {NUM_IMAGES};\n")
        f.write(f"static constexpr int N_INPUT    = {N_INPUT};\n\n")
        f.write(f"static const uint8_t {var_name}[NUM_IMAGES][N_INPUT] = {{\n")
        for img in flat_images:
            line = ", ".join(str(v) for v in img)
            f.write(f"    {{ {line} }},\n")
        f.write("};\n\n")
        f.write(f"#endif // {guard}\n")


# =================================== MAIN ================================== #
if __name__ == '__main__':
    # Generación de datos
    (x_train, y_train), (x_test, y_test) = load_mnist_data()

    # Selección de muestras por dígito para el entrenamiento
    data_train = samples_per_digit(x_train,
                                   y_train,
                                   samples_per_digit=500)

    # Redimencionamiento de las muestras originales a unas más pequeñas
    data_train_resize = resize_data(data_train,
                                    columns=8,
                                    rows=8,
                                    method='mean')

    # Creación de la variable para los datos positivos de entrenamiento
    create_mnist_header(data_train_resize,
                        header_filename='mnist_train_data.hpp',
                        var_name='mnist_images_train')

    # Selección de muestras por dígito para la prueba
    data_test = samples_per_digit(x_train,
                                  y_train,
                                  samples_per_digit=100)

    # Redimencionamiento de las muestras originales a unas más pequeñas
    data_test_resize = resize_data(data_test,
                                   columns=8,
                                   rows=8,
                                   method='mean')

    # Creación de la variable para los datos positivos de testeo 
    # -> Esto no lo veo muy necesario
    create_mnist_header(data_test_resize,
                        header_filename='mnist_test_data.hpp',
                        var_name='mnist_images_test')

    """
    columns, rows = 8, 8
    number = 0
    print(f"##################### NUMERO {number} #####################")
    for sample in range(len(data[number])):
        for i in range(rows):
            for j in range(columns):
                print(f"{data[number][sample][i][j]:3d}", end=" ")
            print("\n")
        print("\n")
    """