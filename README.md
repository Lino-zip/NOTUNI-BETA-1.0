# NOTUNI beta 1.1

¡Bienvenido a **NOTUNI**! Un programa de consola desarrollado en Python diseñado para ayudar a los estudiantes a calcular y proyectar sus calificaciones de manera fácil, rápida y sin errores lógicos.

## Descripción

NOTUNI es una herramienta interactiva que permite a los usuarios llevar un control de su rendimiento académico. A través de un menú sencillo, el programa ofrece dos modalidades de cálculo dependiendo de cómo se evalúe la materia (por promedio simple de puntos o por porcentajes ponderados). Además, cuenta con un sistema robusto de validación de datos para evitar que el programa se cierre por errores tipográficos o valores matemáticamente imposibles (como obtener una nota mayor a la calificación máxima).

## Características Principales

El programa se divide en dos funciones principales de cálculo:

* **1. Cálculo de notas (Puntos a Puntos):** * Ideal para materias donde todas las evaluaciones tienen el mismo peso.
    * Calcula el promedio simple de las notas ingresadas basándose en una escala máxima definida por el usuario.
* **2. Cálculo de porcentajes de notas:**
    * Ideal para materias donde cada evaluación tiene un peso (porcentaje) distinto sobre la nota final.
    * Calcula la nota acumulada exacta basándose en el porcentaje de cada evaluación y los puntos obtenidos.
    * Indica visualmente qué porcentaje de la materia ya ha sido evaluado y cuánto porcentaje falta por cursar (hasta 

##  Cómo se usa:

1. Asegúrate de tener [Python](https://www.python.org/) instalado en tu sistema.
2. Clona este repositorio o descarga el archivo `.py`.
3. Ejecuta el script desde tu terminal:
   ```bash
   python nombre_de_tu_archivo.py
