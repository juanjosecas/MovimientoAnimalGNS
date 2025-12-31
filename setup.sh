#!/bin/bash

# Script de instalación para MovimientoAnimalGNS
# Este script instala todas las dependencias necesarias para ejecutar los notebooks

set -e  # Salir si hay algún error

echo "==================================="
echo "Setup de MovimientoAnimalGNS"
echo "==================================="
echo ""

# Verificar si conda está instalado
if ! command -v conda &> /dev/null
then
    echo "❌ Error: Conda no está instalado."
    echo "Por favor, instala Miniconda o Anaconda primero:"
    echo "https://docs.conda.io/en/latest/miniconda.html"
    exit 1
fi

echo "✓ Conda encontrado"
echo ""

# Preguntar si desea crear el ambiente o usar uno existente
echo "¿Deseas crear un nuevo ambiente conda? (s/n)"
read -r crear_ambiente

if [[ $crear_ambiente == "s" || $crear_ambiente == "S" ]]; then
    echo ""
    echo "Creando ambiente conda desde environment.yml..."
    conda env create -f environment.yml
    echo ""
    echo "✓ Ambiente 'movimiento-animal' creado exitosamente"
    echo ""
    echo "Para activar el ambiente, ejecuta:"
    echo "  conda activate movimiento-animal"
else
    echo ""
    echo "Instalando dependencias en el ambiente actual..."
    pip install -r requirements.txt
    echo ""
    echo "✓ Dependencias instaladas exitosamente"
fi

echo ""
echo "==================================="
echo "Notas importantes:"
echo "==================================="
echo ""
echo "1. Para SLEAP (animal tracking):"
echo "   Sigue las instrucciones en: https://sleap.ai/installation.html"
echo "   Instalación recomendada:"
echo "   conda install -c conda-forge -c nvidia -c sleap sleap"
echo ""
echo "2. Para DeepLabCut (pose estimation):"
echo "   Sigue las instrucciones en: https://github.com/DeepLabCut/DeepLabCut"
echo "   Instalación recomendada:"
echo "   pip install 'deeplabcut[gui]'"
echo ""
echo "3. Para iniciar Jupyter Notebook:"
echo "   jupyter notebook"
echo ""
echo "==================================="
echo "✓ Setup completado"
echo "==================================="
