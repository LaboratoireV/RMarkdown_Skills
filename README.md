# The V Lab R Markdown Learning Hub

一个面向 R Markdown 初学者与数据分析学习者的双语学习网站。网站通过中英文教程介绍 `.Rmd` 文档结构、YAML、Markdown、代码块、行内 R、参数化报告，以及 `knitr` 与 `knitr::kable()` 的主要用法。

## 在线网站

访问 [The V Lab R Markdown Learning Hub](https://laboratoirev.github.io/RMarkdown_Skills/) 选择英文版或中文版教程。

## 教程

- [English guide](https://laboratoirev.github.io/RMarkdown_Skills/r_markdown_guide_en.html)：R Markdown、knitr 与 `kable()` 的英文实践教程。
- [中文教程](https://laboratoirev.github.io/RMarkdown_Skills/r_markdown_guide_zh.html)：R Markdown 主要用法及 knitr、`kable()` 中文详解。

## 网站文件

- `index.html`：双语学习网站首页与教程入口。
- `r_markdown_guide_en.html` / `r_markdown_guide_zh.html`：自包含的英文与中文教程。
- `styles.css`：学习中心首页的响应式样式。
- `guide-styles.css`：中英文教程页共用的阅读、目录与打印样式。
- `includes/vlab-brand.html`：教程页共用的 The V Lab 品牌返回入口。
- `og.png`：网站社交分享预览图。
- `.nojekyll`：让 GitHub Pages 原样发布静态文件。
- `render.R`：重新渲染项目根目录中的全部 Rmd。
- `build-sites.sh`：为 The V Lab 的站点托管生成静态发布包。

## 重新渲染

`.Rmd` 源文件只保存在本地工作副本中，并通过 `.gitignore` 排除，不上传到 GitHub。生成的 HTML 会保留教学代码和执行结果。

安装依赖：

```r
install.packages(c("rmarkdown", "knitr"))
```

在项目目录运行：

```bash
Rscript render.R
```

渲染需要 Pandoc；RStudio 已自带 Pandoc。
