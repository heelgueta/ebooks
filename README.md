# Libro de Estadística Descriptiva

Este repositorio contiene la estructura de trabajo para desarrollar y publicar un libro interactivo en GitBook.

## Carpetas

- `src/`: Archivos fuente largos, uno por sección del libro (`parte0.md` a `parte4.md`).
- `gitbook/`: Carpeta donde se exportarán los archivos divididos por secciones para GitBook.
- `scripts/`: Script R para segmentar los archivos y generar la estructura navegable.

## Uso

1. Escribe y edita los archivos en `src/`.
2. Ejecuta `scripts/segmentador.R` para dividir automáticamente los capítulos por secciones y generar un `SUMMARY.md`.
3. Sube el contenido de `gitbook/` a un repositorio conectado con GitBook.com.

## Requisitos

- R con el paquete `tidyverse` instalado.
