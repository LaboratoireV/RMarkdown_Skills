#!/usr/bin/env Rscript

arguments <- commandArgs(trailingOnly = FALSE)
file_argument <- arguments[startsWith(arguments, "--file=")]

project_directory <- if (length(file_argument)) {
  dirname(normalizePath(sub("^--file=", "", file_argument[[1]])))
} else {
  normalizePath(getwd())
}

setwd(project_directory)

local_library <- file.path(project_directory, ".Rlib")
if (dir.exists(local_library)) {
  .libPaths(c(local_library, .libPaths()))
}

if (!requireNamespace("rmarkdown", quietly = TRUE)) {
  stop(
    "The rmarkdown package is required. Run ",
    "install.packages(c('rmarkdown', 'knitr')) before rendering."
  )
}

if (!rmarkdown::pandoc_available()) {
  pandoc_candidates <- c(
    "/Applications/RStudio.app/Contents/Resources/app/quarto/bin/tools/aarch64",
    "/Applications/RStudio.app/Contents/Resources/app/quarto/bin/tools/x86_64"
  )

  available_candidate <- pandoc_candidates[
    file.exists(file.path(pandoc_candidates, "pandoc"))
  ]

  if (length(available_candidate)) {
    Sys.setenv(RSTUDIO_PANDOC = available_candidate[[1]])
  }
}

rmd_files <- sort(list.files(
  project_directory,
  pattern = "[.][Rr][Mm][Dd]$",
  full.names = FALSE
))

if (!length(rmd_files)) {
  stop("No Rmd files were found in the project root.")
}

for (source_file in rmd_files) {
  message("Rendering ", source_file, " ...")
  rmarkdown::render(
    input = source_file,
    output_file = sub("[.][Rr][Mm][Dd]$", ".html", source_file),
    envir = new.env(parent = globalenv()),
    encoding = "UTF-8",
    clean = TRUE,
    quiet = FALSE
  )
}

message("Rendered ", length(rmd_files), " R Markdown file(s).")
