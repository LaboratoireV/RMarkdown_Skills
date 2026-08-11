# The V Lab R Markdown Learning Hub

[English](README.md) | [简体中文](README.zh-CN.md)

A bilingual learning website for R Markdown beginners and data-analysis learners. The guides explain how to combine narrative, R code, computed results, plots, and tables in reproducible reports, with detailed coverage of `knitr` and `knitr::kable()`.

## Live website

Visit the [R Markdown Learning Hub](https://laboratoirev.github.io/RMarkdown_Skills/) and choose either the English or Chinese guide.

## Guides

- [English guide](https://laboratoirev.github.io/RMarkdown_Skills/r_markdown_guide_en.html) — a practical introduction to R Markdown, `knitr`, and `kable()`.
- [中文教程](https://laboratoirev.github.io/RMarkdown_Skills/r_markdown_guide_zh.html) — a complete Chinese guide to the same topics.

## What you will learn

- the anatomy of an `.Rmd` document: YAML, Markdown, and R code chunks;
- inline R code, figures, tables, and parameterized reports;
- the rendering pipeline from `.Rmd` through `knitr` and Pandoc to HTML;
- chunk options for controlling code, output, messages, warnings, figures, and caching;
- portable tables with `knitr::kable()`, including captions, alignment, numeric formatting, missing values, and HTML output; and
- reproducibility practices for paths, environments, dependencies, and clean rendering.

> **Terminology:** `knitr` is an R package. `kable()` is a function exported by `knitr`, not a separate package. For advanced table styling, `kableExtra` is an optional extension package.

## Repository structure

| Path | Purpose |
|---|---|
| `index.html` | Bilingual learning-hub homepage |
| `r_markdown_guide_en.html` | Self-contained English tutorial |
| `r_markdown_guide_zh.html` | Self-contained Chinese tutorial |
| `styles.css` | Responsive homepage styles |
| `guide-styles.css` | Shared reading, table-of-contents, and print styles for both guides |
| `includes/vlab-brand.html` / `includes/vlab-footer.html` | Shared The V Lab header and footer used while rendering the guides |
| `og.png` | Social-sharing preview image |
| `.nojekyll` | Publishes the static files unchanged on GitHub Pages |
| `render.R` | Renders every local R Markdown source file in the project root |
| `build-sites.sh` | Creates the static bundle used by The V Lab site hosting |

## Render locally

Install the required packages:

```r
install.packages(c("rmarkdown", "knitr"))
```

From the project directory, run:

```bash
Rscript render.R
```

Rendering also requires Pandoc. RStudio includes a compatible Pandoc installation.

## Source-file policy

The `.Rmd` source files remain in the local working copy and are excluded by `.gitignore`; they are intentionally not uploaded to GitHub. The generated HTML files retain the instructional code and executed results required by the published tutorials.

## Publishing

GitHub Pages publishes the site from the `main` branch at:

<https://laboratoirev.github.io/RMarkdown_Skills/>
