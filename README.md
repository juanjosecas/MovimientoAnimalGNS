# MovimientoAnimalGNS

Este proyecto utiliza DeepLabCut para analizar el movimiento de animales en videos experimentales. El flujo de trabajo incluye análisis de videos, filtrado de predicciones y creación de videos etiquetados.

## Requisitos del Sistema

- Python 3.7 - 3.10
- Sistema operativo: Linux, Windows o macOS
- GPU (opcional pero recomendada para mejor rendimiento)
- Al menos 8 GB de RAM

## Instalación del Entorno

### Opción 1: Usando Conda (Recomendado)

1. **Instalar Anaconda o Miniconda**
   
   Si no tienes conda instalado, descárgalo desde:
   - Anaconda: https://www.anaconda.com/download
   - Miniconda: https://docs.conda.io/en/latest/miniconda.html

2. **Crear un entorno virtual para el proyecto**

   ```bash
   conda create -n movimiento-animal python=3.9
   conda activate movimiento-animal
   ```

3. **Instalar DeepLabCut**

   ```bash
   pip install deeplabcut[gui]
   ```

4. **Instalar dependencias adicionales**

   ```bash
   pip install opencv-python numpy matplotlib pyyaml jupyter
   ```

### Opción 2: Usando pip con entorno virtual

1. **Crear un entorno virtual**

   ```bash
   python -m venv venv
   source venv/bin/activate  # En Windows: venv\Scripts\activate
   ```

2. **Instalar las dependencias**

   ```bash
   pip install deeplabcut[gui]
   pip install opencv-python numpy matplotlib pyyaml jupyter
   ```

### Verificar la instalación

Para verificar que DeepLabCut se instaló correctamente:

```bash
python -c "import deeplabcut as dlc; print('DeepLabCut instalado correctamente:', dlc.__version__)"
```

## Estructura del Proyecto

```
MovimientoAnimalGNS/
├── Inferencia_en_SLEAP.ipynb          # Notebook principal para análisis de videos
├── Analisis de Resultados SLEAP.ipynb  # Análisis de resultados (en desarrollo)
├── Creacion de modelo de ML.ipynb      # Creación de modelos ML (en desarrollo)
├── RandomForest.ipynb                  # Modelo Random Forest (en desarrollo)
└── README.md                           # Este archivo
```

## Uso de los Notebooks

### 1. Inferencia_en_SLEAP.ipynb

Este es el notebook principal que realiza el análisis completo de videos con DeepLabCut.

**Pasos para usar:**

1. **Activar el entorno**
   ```bash
   conda activate movimiento-animal  # o source venv/bin/activate si usas pip
   ```

2. **Iniciar Jupyter Notebook**
   ```bash
   jupyter notebook
   ```

3. **Abrir el notebook** `Inferencia_en_SLEAP.ipynb`

4. **Configurar las rutas** en el notebook:
   - `path_config_file`: Ruta al archivo de configuración de DeepLabCut (ej: `'Experimento Olfato-JJ-2024-02-19/config2.yaml'`)
   - `video_path`: Ruta al video de entrada (ej: `'experiments/A-7.mp4'`)
   - `video_out`: Ruta para guardar el video recortado (ej: `'experiments/A-7_crop.mp4'`)

5. **Ejecutar las celdas** en orden:
   - **Celda 1**: Importación de módulos necesarios
   - **Celda 2**: Verificación del archivo de configuración
   - **Celda 3**: Análisis de propiedades del video (dimensiones, FPS, etc.)
   - **Celda 4**: Recorte del video a la región de interés (ROI)
   - **Celda 5**: Análisis con DeepLabCut (identifica puntos clave)
   - **Celda 6**: Filtrado de predicciones con ARIMA
   - **Celda 7**: Creación de video etiquetado con las predicciones

**Outputs generados:**
- Video recortado: `experiments/A-7_crop.mp4`
- Archivo CSV con predicciones: `experiments/A-7_crop[...].csv`
- Video etiquetado: `experiments/A-7_crop[...]_labeled.mp4`

### 2. Otros Notebooks

Los siguientes notebooks están en desarrollo:
- `Analisis de Resultados SLEAP.ipynb`: Análisis posterior de los resultados
- `Creacion de modelo de ML.ipynb`: Creación de modelos de machine learning
- `RandomForest.ipynb`: Implementación de Random Forest

## Requisitos Previos

Antes de ejecutar el notebook principal, asegúrate de tener:

1. **Modelo de DeepLabCut entrenado**: Necesitas un proyecto de DeepLabCut con un modelo ya entrenado
2. **Archivo de configuración**: Un archivo `config.yaml` válido del proyecto DeepLabCut
3. **Videos de entrada**: Videos de animales en formato `.mp4` u otro formato compatible

## Flujo de Trabajo Típico

1. Preparar el entorno con DeepLabCut instalado
2. Colocar los videos en la carpeta `experiments/`
3. Configurar las rutas en el notebook
4. Ejecutar el análisis completo
5. Revisar los videos etiquetados y archivos CSV generados
6. Analizar los resultados (usando los notebooks complementarios cuando estén disponibles)

## Solución de Problemas

### Error: "No module named 'deeplabcut'"
- Verifica que el entorno virtual esté activado
- Reinstala DeepLabCut: `pip install deeplabcut`

### Error al abrir el video
- Verifica que la ruta al video sea correcta
- Asegúrate de que OpenCV pueda leer el formato del video
- Intenta convertir el video a formato MP4 estándar

### Error de GPU/CUDA
- DeepLabCut puede funcionar sin GPU, pero será más lento
- Para usar GPU, asegúrate de tener los drivers de CUDA instalados correctamente

### Memoria insuficiente
- Reduce la resolución del video
- Procesa menos frames simultáneamente
- Aumenta la RAM disponible

## Contribuciones

Este proyecto está en desarrollo activo. Los notebooks adicionales se completarán próximamente.

## Licencia

Este proyecto es parte del trabajo de investigación en el Grupo de Neurociencias y Sistemas (GNS).