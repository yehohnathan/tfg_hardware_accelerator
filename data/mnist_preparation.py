# ================================ LIBRERÍAS ================================ #
import numpy as np
from PIL import Image
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


def resize_data_mc(
        x_data: np.ndarray,
        columns: int,
        rows: int, method: str = 'mean') -> np.ndarray:
    """
    Redimensiona cada imagen en `x_data` (shape: N×28×28) a (rows×columns)
    usando el método especificado:
      - 'mean': promedio entero del bloque
      - 'median': mediana del bloque
      - 'max': valor máximo del bloque

    Retorna
    -------
    out : np.ndarray
        Array de forma (N, rows, columns), dtype=uint8.
    """
    if method not in ('mean', 'median', 'max'):
        raise ValueError(
            f"method debe ser 'mean', 'median' o 'max'; got {method}")
    if not (4 <= columns <= 28) or not (4 <= rows <= 28):
        raise ValueError("columns y rows deben estar entre 4 y 28 inclusive.")

    # Bordes de los bloques
    row_edges = np.linspace(0, 28, rows + 1)
    col_edges = np.linspace(0, 28, columns + 1)

    N = x_data.shape[0]
    out = np.empty((N, rows, columns), dtype=np.uint8)

    for k in range(N):
        img = x_data[k]
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
                else:  # max
                    val = int(block.max())

                out[k, i, j] = val
    return out


# ====================== FUNCIONES OPTIMIZADAS CHATGPT ====================== #
def samples_per_digit(x_data, y_data, samples_per_digit=10, seed=None):
    """
    Para cada dígito 0–9, toma `samples_per_digit` índices distintos
    (sin reemplazo) y luego mezcla todo el conjunto.

    Parámetros
    ----------
    x_data : np.ndarray
        Imágenes de entrada, shape (N, H, W).
    y_data : np.ndarray
        Etiquetas, shape (N,).
    samples_per_digit : int, opcional
        Número de muestras por dígito (por defecto 10).
    seed : int | None, opcional
        Semilla para reproducibilidad (por defecto None).

    Retorna
    -------
    x_sel : np.ndarray
        Imágenes seleccionadas y barajadas, shape
        (10 * samples_per_digit, H, W).
    y_sel : np.ndarray
        Etiquetas correspondientes, shape (10 * samples_per_digit,).
    """
    rng = np.random.default_rng(seed)

    imgs = []
    labs = []
    for digit in range(10):
        # Busca todos los índices donde aparece este dígito
        idx_all = np.flatnonzero(y_data == digit)
        # Elige sin reemplazo
        chosen = rng.choice(idx_all, size=samples_per_digit, replace=False)
        imgs.append(x_data[chosen])
        labs.extend([digit] * samples_per_digit)

    # Concatenamos y barajamos
    x_sel = np.concatenate(imgs, axis=0)
    y_sel = np.array(labs, dtype=y_data.dtype)

    perm = rng.permutation(len(y_sel))
    return x_sel[perm], y_sel[perm]


def resize_data(
    x_data: np.ndarray,
    columns: int,
    rows: int,
    resample: str = 'lanczos'
) -> np.ndarray:
    """
    Redimensiona cada imagen en `x_data` (shape: N×28×28) a (rows×columns)
    usando Pillow.

    Parámetros
    ----------
    x_data : np.ndarray
        Array de imágenes dtype uint8, shape (N, H, W).
    columns : int
        Anchura deseada (4 ≤ columns ≤ 28).
    rows : int
        Altura deseada  (4 ≤ rows ≤ 28).
    resample : str
        Método de remuestreo en PIL. Opciones:
          - 'nearest'  ➔ Image.NEAREST
          - 'bilinear' ➔ Image.BILINEAR
          - 'bicubic'  ➔ Image.BICUBIC
          - 'lanczos'  ➔ Image.LANCZOS (mejor para reducción)

    Retorna
    -------
    out : np.ndarray
        Array de forma (N, rows, columns), dtype=uint8.
    """
    # Validación de rango
    if not (4 <= columns <= 28) or not (4 <= rows <= 28):
        raise ValueError("columns y rows deben estar entre 4 y 28 inclusive.")

    # Mapeo de nombres a constantes PIL
    filters = {
        'nearest': Image.NEAREST,
        'bilinear': Image.BILINEAR,
        'bicubic': Image.BICUBIC,
        'lanczos': Image.LANCZOS,
    }
    if resample not in filters:
        raise ValueError(
            f"resample debe ser uno de {tuple(filters)}; got '{resample}'")

    N = x_data.shape[0]
    out = np.empty((N, rows, columns), dtype=np.uint8)

    for k in range(N):
        # Convierte el array 2D a imagen PIL
        img = Image.fromarray(x_data[k])
        # Redimensiona con el filtro elegido
        img_resized = img.resize((columns, rows), resample=filters[resample])
        # Vuelve a ndarray
        out[k] = np.array(img_resized, dtype=np.uint8)

    return out


def create_mnist_header(
    x_data: np.ndarray,
    header_filename: str = "mnist_data.hpp",
    var_name: str = "mnist_images"
):
    """
    Genera un .hpp con todas las imágenes en `x_data` (shape N×R×C).

    Parámetros
    ----------
    x_data : np.ndarray
        Array de imágenes dtype uint8, shape (N, R, C).
    header_filename : str
        Nombre del archivo de salida.
    var_name : str
        Nombre de la variable en C++.
    """
    N, R, C = x_data.shape
    guard = header_filename.replace('.', '_').upper()

    with open(header_filename, 'w', encoding='utf-8') as f:
        f.write(f"// Auto-generated MNIST header: {header_filename}\n")
        f.write(f"#ifndef {guard}\n")
        f.write(f"#define {guard}\n\n")
        f.write("#include <cstdint>\n\n")
        f.write(f"static constexpr int NUM_IMAGES = {N};\n")
        f.write(f"static constexpr int N_INPUT    = {R * C};\n\n")
        f.write(f"static const uint8_t {var_name}[NUM_IMAGES][N_INPUT] = {{\n")
        for img in x_data:
            flat = img.reshape(R * C)
            line = ", ".join(str(int(v)) for v in flat)
            f.write(f"    {{ {line} }},\n")
        f.write("};\n\n")
        f.write(f"#endif // {guard}\n")


# =================================== MAIN ================================== #
if __name__ == '__main__':
    # 1. Carga MNIST
    (x_train, y_train), (x_test, y_test) = load_mnist_data()

    # 2. Extrae y mezcla 20 muestras por dígito
    x_tr, y_tr = samples_per_digit(x_train, y_train,
                                   samples_per_digit=20,
                                   seed=42)

    # 3. Redimensiona a 8×8
    x_tr_pil = resize_data(x_tr, columns=14, rows=14, resample='lanczos')

    # 4. Genera los headers
    create_mnist_header(x_tr_pil,
                        header_filename='mnist_train_data.hpp',
                        var_name='mnist_images_train')
    """
    x_te, y_te = samples_per_digit(x_test, y_test,
                                   samples_per_digit=20,
                                   seed=123)

    x_te_resized = resize_data(x_te, columns=8, rows=8, method='mean')

    create_mnist_header(x_te_resized,
                        header_filename='mnist_test_data.hpp',
                        var_name='mnist_images_test')
    """

    columns, rows = 14, 14
    samples = 20 * 10

    for samples in range(samples):
        print(f"####### Número {y_tr[samples]} #######")
        for i in range(rows):
            print(" ".join(f"{x:3d}" for x in x_tr_pil[samples][i]))
        print("\n")
