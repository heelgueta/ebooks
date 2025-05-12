# Este script reemplaza los placeholders tipo [[componente:tabs:pXXXX]]
# en los archivos .md de gitbook/ usando bloques almacenados en components/<tipo>/gitbook.md

library(tidyverse)
library(stringi)

# Ruta base del proyecto
dir_gitbook <- "gitbook"
dir_components <- "src/components"

# Detecta y reemplaza los bloques en un archivo .md
procesar_archivo <- function(md_path) {
  contenido <- readLines(md_path, encoding = "UTF-8", warn = FALSE)
  
  # Detectar líneas con placeholders tipo [[componente:tipo:pXXXX]]
  placeholders <- str_which(contenido, "\\[\\[componente:.*?\\]\\]")
  if (length(placeholders) == 0) return(NULL)
  
  for (i in placeholders) {
    linea <- contenido[i]
    
    if (str_detect(linea, "\\[\\[componente:([a-z]+):p\\d{4}\\]\\]")) {
      parts <- str_match(linea, "\\[\\[componente:([a-z]+):(p\\d{4})\\]\\]")
      tipo <- parts[2]
      id <- parts[3]
      
      # Archivo de componentes correspondiente
      comp_path <- file.path(dir_components, tipo, "gitbook.md")
      if (!file.exists(comp_path)) {
        message(glue::glue("⚠️ No se encontró archivo: {comp_path}"))
        next
      }
      
      # Leer archivo de componentes y extraer bloque correspondiente
      comp_lines <- readLines(comp_path, warn = FALSE, encoding = "UTF-8")
      start <- which(str_trim(comp_lines) == glue::glue("<!-- {tipo}-{id} -->"))
      end <- which(str_trim(comp_lines) == glue::glue("<!-- /{tipo}-{id} -->"))
      
      if (length(start) == 1 && length(end) == 1 && end > start) {
        bloque <- comp_lines[(start + 1):(end - 1)]
        contenido[i] <- paste0(bloque, collapse = "\n")
      } else {
        message(glue::glue("⚠️ No se encontró bloque válido para {tipo}-{id} en {comp_path}"))
      }
    }
  }
  
  # Escribir de nuevo el archivo con los reemplazos
  writeLines(contenido, md_path, useBytes = TRUE)
  message(glue::glue("✅ Procesado: {md_path}"))
}

# Ejecutar en todos los .md de gitbook/
md_files <- list.files(dir_gitbook, pattern = "\\.md$", full.names = TRUE)
walk(md_files, procesar_archivo)
