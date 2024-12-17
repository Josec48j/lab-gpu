#!/bin/bash
#SBATCH -p bohr-gpu          # Especificar que es una cola con GPU
#SBATCH -D /home/alumno02/bohr/lab-gpu   # Directorio de trabajo correcto
#SBATCH --output=%u-%j.out   # Salida estándar
#SBATCH --error=%u-%j.err    # Error estándar
#SBATCH --ntasks=1

# Cargar el entorno de Anaconda
module load anaconda/2023.03  # Cargar el módulo de Anaconda

# Definir los valores para los números de elementos
values=(5000000 50000000 500000000)

# Ejecutar el notebook para cada tamaño de array
for value in "${values[@]}"; do
    echo "Ejecutando con $value elementos"

    # Ejecutar el notebook usando ipython, pasando el valor de 'value' como argumento
    ipython /home/alumno02/bohr/lab-gpu/reduc-operation-array_gpu-alumno02.ipynb $value
done

#Cerramos el entorno de Anaconda
module unload anaconda/2023.03
