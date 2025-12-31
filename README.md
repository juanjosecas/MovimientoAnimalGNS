# MovimientoAnimalGNS

Proyecto para análisis de movimiento animal utilizando SLEAP y técnicas de Machine Learning.

## 📋 Contenido

Este repositorio contiene varios notebooks de Jupyter para:
- **Análisis de Resultados SLEAP**: Visualización y análisis de coordenadas rastreadas
- **Creación de Modelo de ML**: Entrenamiento de modelos de machine learning
- **Random Forest**: Análisis con modelos Random Forest para clasificación
- **Inferencia en SLEAP**: Procesamiento de videos con DeepLabCut/SLEAP

## 🚀 Instalación

### Opción 1: Instalación automática con script de setup

1. Clona este repositorio:
```bash
git clone https://github.com/juanjosecas/MovimientoAnimalGNS.git
cd MovimientoAnimalGNS
```

2. Ejecuta el script de instalación:
```bash
bash setup.sh
```

3. Activa el ambiente conda:
```bash
conda activate movimiento-animal
```

### Opción 2: Instalación manual con Conda

1. Clona este repositorio:
```bash
git clone https://github.com/juanjosecas/MovimientoAnimalGNS.git
cd MovimientoAnimalGNS
```

2. Crea el ambiente conda desde el archivo `environment.yml`:
```bash
conda env create -f environment.yml
```

3. Activa el ambiente:
```bash
conda activate movimiento-animal
```

### Opción 3: Instalación con pip

Si prefieres no usar conda, puedes instalar las dependencias con pip:

```bash
pip install -r requirements.txt
```

## 📦 Dependencias Adicionales

### SLEAP (para tracking de animales)

SLEAP es una herramienta para el seguimiento de poses de animales. Para instalarlo:

```bash
conda install -c conda-forge -c nvidia -c sleap sleap
```

Más información: https://sleap.ai/installation.html

### DeepLabCut (alternativa para pose estimation)

Si prefieres usar DeepLabCut en lugar de SLEAP:

```bash
pip install 'deeplabcut[gui]'
```

Más información: https://github.com/DeepLabCut/DeepLabCut

## 🎯 Uso

1. Asegúrate de tener el ambiente activado:
```bash
conda activate movimiento-animal
```

2. Inicia Jupyter Notebook:
```bash
jupyter notebook
```

3. Abre cualquiera de los notebooks disponibles:
   - `Analisis de Resultados SLEAP.ipynb`
   - `Creacion de modelo de ML.ipynb`
   - `RandomForest.ipynb`
   - `Inferencia_en_SLEAP.ipynb`

## 📚 Librerías Principales

- **NumPy**: Operaciones numéricas
- **Pandas**: Manipulación de datos
- **Matplotlib**: Visualización
- **Scikit-learn**: Machine Learning (Random Forest, etc.)
- **OpenCV**: Procesamiento de video
- **PyYAML**: Manejo de archivos de configuración
- **SLEAP/DeepLabCut**: Tracking y pose estimation de animales

## 🔧 Solución de Problemas

### El ambiente no se crea correctamente

Asegúrate de tener la versión más reciente de conda:
```bash
conda update conda
```

### Errores al importar librerías

Verifica que el ambiente esté activado:
```bash
conda activate movimiento-animal
```

### Problemas con SLEAP o DeepLabCut

Estas librerías tienen requisitos específicos de sistema. Consulta su documentación oficial:
- SLEAP: https://sleap.ai/installation.html
- DeepLabCut: https://github.com/DeepLabCut/DeepLabCut

## 📄 Licencia

Este proyecto es parte del grupo GNS (Grupo de Neurociencias de Sistemas).

## 👥 Contribución

Para contribuir a este proyecto, por favor contacta con los administradores del repositorio.