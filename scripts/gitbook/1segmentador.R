# segmentador.R — Limpia /gitbook, junta Markdown, divide por encabezados y genera SUMMARY.md jerárquico

if (!requireNamespace("tidyverse", quietly = TRUE)) install.packages("tidyverse")
if (!requireNamespace("stringi", quietly = TRUE)) install.packages("stringi")

library(tidyverse)
library(stringi)

# ==== FUNCIONES ====

# Limpia todos los archivos dentro de /gitbook
clean_gitbook_dir <- function(path = "gitbook") {
  if (dir.exists(path)) {
    list.files(path, full.names = TRUE, recursive = TRUE) |> file.remove()
  } else {
    dir.create(path, recursive = TRUE)
  }
}

# Asegura salto de línea final por archivo
add_final_line <- function(path) {
  lines <- readLines(path, warn = FALSE)
  if (length(lines) > 0 && !grepl("\\n$", readChar(path, file.info(path)$size))) {
    writeLines(c(lines, ""), path)
  }
}

# Convierte texto a slug para nombre de archivo
slugify <- function(text) {
  text |>
    stri_trans_general("Latin-ASCII") |>
    tolower() |>
    str_replace_all("[^a-z0-9]+", "-") |>
    str_replace_all("-+", "-") |>
    str_remove("^-|-$")
}

# Junta todos los archivos src/parte*.md en un solo completo.md
cat_md_files <- function(src_dir = "src", output_file = "completo.md") {
  files <- list.files(src_dir, pattern = "parte.*\\.md", full.names = TRUE)
  files <- sort(files)
  content <- map_chr(files, ~ paste(readLines(.x, encoding = "UTF-8"), collapse = "\n"))
  writeLines(paste(content, collapse = "\n\n"), output_file, useBytes = TRUE)
}

# Contador global inicializado
global_counter <- 0

# Segmenta un markdown por encabezados # a ####
split_md_file <- function(input_file, output_dir) {
  lines <- readLines(input_file, encoding = "UTF-8")
  dir.create(output_dir, showWarnings = FALSE, recursive = TRUE)
  
  header_lines <- grep("^#{1,4} ", lines)
  
  headers <- tibble(
    line_num = header_lines,
    raw = lines[header_lines]
  ) %>%
    mutate(
      level = str_match(raw, "^(#{1,6}) ")[, 2] |> nchar(),
      title = str_trim(str_remove(raw, "^#{1,6} ")),
      slug = slugify(title),
      prefijo = map_chr(seq_along(title), function(i) {
        val <- sprintf("p%04d", global_counter)
        global_counter <<- global_counter + 1
        val
      }),
      filename = sprintf("%s-%s.md", prefijo, slug),
      end = lead(line_num, default = length(lines) + 1) - 1
    )
  
  headers %>%
    pwalk(function(line_num, end, filename, ...) {
      writeLines(lines[line_num:end], file.path(output_dir, filename), useBytes = TRUE)
    })
  
  return(headers %>% select(title, file = filename, level))
}

# Genera el índice GitBook
generate_summary <- function(file_refs, output_file = "gitbook/SUMMARY.md") {
  writeLines("# Contenidos", output_file)
  
  file_refs <- file_refs %>% arrange(file)
  
  for (i in seq_len(nrow(file_refs))) {
    ref <- file_refs[i, ]
    lvl <- suppressWarnings(as.integer(ref$level))
    indent <- paste(rep("  ", max(0, lvl - 1)), collapse = "")
    line <- sprintf("%s* [%s](%s)", indent, ref$title, ref$file)
    cat(line, "\n", file = output_file, append = TRUE)
  }
}

# ==== EJECUCIÓN ====

# 1. Limpia gitbook/
clean_gitbook_dir("gitbook")

# 2. Asegura salto de línea final en todos los src/parte*.md
list.files("src", pattern = "parte.*\\.md", full.names = TRUE) |> walk(add_final_line)

# 3. Junta en completo.md
cat_md_files(src_dir = "src", output_file = "completo.md")

# 4. Segmenta completo.md y genera archivos
global_counter <- 0
refs <- split_md_file("completo.md", output_dir = "gitbook")

# 5. Genera índice
generate_summary(refs)

#Limpieza
file.remove("completo.md")
