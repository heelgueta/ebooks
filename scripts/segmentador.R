# segmentador.R — Divide markdown por encabezados hasta nivel #### y genera SUMMARY.md jerárquico

if (!requireNamespace("tidyverse", quietly = TRUE)) install.packages("tidyverse")
if (!requireNamespace("stringi", quietly = TRUE)) install.packages("stringi")

library(tidyverse)
library(stringi)

# Asegura salto de línea final
add_final_line <- function(path) {
  lines <- readLines(path, warn = FALSE)
  if (length(lines) > 0 && !grepl("\\n$", readChar(path, file.info(path)$size))) {
    writeLines(c(lines, ""), path)
  }
}

# Slug para filenames
slugify <- function(text) {
  text |>
    stri_trans_general("Latin-ASCII") |>
    tolower() |>
    str_replace_all("[^a-z0-9]+", "-") |>
    str_replace_all("-+", "-") |>
    str_remove("^-|-$")
}

# Inicializa contador global para prefijos jerárquicos
global_counter <- 0

# Segmenta un archivo .md por encabezados # a ####
split_md_file <- function(input_file, output_dir) {
  lines <- readLines(input_file, encoding = "UTF-8")
  file_base <- tools::file_path_sans_ext(basename(input_file))
  dir.create(output_dir, showWarnings = FALSE, recursive = TRUE)
  
  header_lines <- grep("^#{1,4} ", lines)
  
  headers <- tibble(
    line_num = header_lines,
    raw = lines[header_lines]
  ) |>
    mutate(
      level = as.integer(str_match(str_trim(raw), "^(#+) ")[, 2] |> nchar()),
      title = str_trim(str_remove(raw, "^#{1,4} ")),
      slug = slugify(title),
      prefijo = map_chr(seq_along(title), function(i) {
        val <- sprintf("p%04d", global_counter)
        global_counter <<- global_counter + 10
        val
      }),
      filename = sprintf("%s-%s.md", prefijo, slug),
      end = lead(line_num, default = length(lines) + 1) - 1
    )
  
  headers |> pwalk(function(line_num, raw, level, title, slug, prefijo, filename, end) {
    section_lines <- lines[line_num:end]
    writeLines(section_lines, file.path(output_dir, filename), useBytes = TRUE)
  })
  
  return(headers |> select(title, file = filename, level))
}

# Genera SUMMARY.md con indentación jerárquica
generate_summary <- function(file_refs, output_file = "gitbook/SUMMARY.md") {
  writeLines("# Contenidos", output_file)
  
  for (i in seq_len(nrow(file_refs))) {
    ref <- file_refs[i, ]
    
    lvl <- suppressWarnings(as.integer(ref$level))
    if (is.na(lvl) || lvl < 1 || lvl > 6) lvl <- 1
    
    indent <- paste(rep("  ", lvl - 1), collapse = "")
    line <- sprintf("%s* [%s](%s)", indent, ref$title, ref$file)
    
    cat(line, "\n", file = output_file, append = TRUE)
  }
}

# Ejecuta el proceso completo
list.files("src", pattern = "parte.*\\.md", full.names = TRUE) |> walk(add_final_line)

all_files <- list.files("src", pattern = "parte.*\\.md", full.names = TRUE)
global_counter <- 0
refs_list <- map(all_files, split_md_file, output_dir = "gitbook")
refs <- bind_rows(refs_list)

generate_summary(refs)
