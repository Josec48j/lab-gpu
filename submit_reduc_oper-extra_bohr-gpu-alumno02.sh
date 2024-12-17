#!/bin/bash

#SBATCH -p bohr-gpu
#SBATCH -D /home/alumno02/lab-gpu # Directorio de trabajo
#SBATCH --output=%u-%j.out   # Salida estándar
#SBATCH --error=%u-%j.err    # Error estándar´
#SBATCH --ntasks=1

# Cargar el entorno de Anaconda
module load anaconda/2023.03

ipython /home/alumno02/bohr/lab-gpu/reduc-operation-array_extra-alumno02.ipynb

#Cerramos
module unload anaconda/2023.03
