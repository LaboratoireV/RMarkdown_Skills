# The V Lab R Markdown 学习中心

[English](README.md) | [简体中文](README.zh-CN.md)

这是一个面向 R Markdown 初学者和数据分析学习者的双语学习网站。教程讲解如何把说明文字、R 代码、计算结果、图形和表格组合成可复现报告，并详细介绍 `knitr` 与 `knitr::kable()`。

## 在线网站

访问 [R Markdown 学习中心](https://laboratoirev.github.io/RMarkdown_Skills/)，选择英文或中文教程。

## 教程

- [English guide](https://laboratoirev.github.io/RMarkdown_Skills/r_markdown_guide_en.html)：R Markdown、`knitr` 与 `kable()` 的英文实践教程。
- [中文教程](https://laboratoirev.github.io/RMarkdown_Skills/r_markdown_guide_zh.html)：上述内容的完整中文教程。

## 你将学到什么

- `.Rmd` 文档的基本结构：YAML、Markdown 与 R 代码块；
- 行内 R、图形、表格和参数化报告；
- 从 `.Rmd` 经由 `knitr` 和 Pandoc 生成 HTML 的渲染流程；
- 控制代码、输出、消息、警告、图形和缓存的代码块选项；
- 使用 `knitr::kable()` 创建可移植表格，包括标题、对齐、数值格式、缺失值和 HTML 输出；
- 路径、环境、依赖管理与干净渲染等可复现实践。

> **术语说明：**`knitr` 是一个 R package；`kable()` 是 `knitr` 导出的函数，并不是独立 package。需要高级表格样式时，可以选用扩展 package `kableExtra`。

## 仓库结构

| 路径 | 用途 |
|---|---|
| `index.html` | 双语学习网站首页 |
| `r_markdown_guide_en.html` | 自包含英文教程 |
| `r_markdown_guide_zh.html` | 自包含中文教程 |
| `styles.css` | 首页响应式样式 |
| `guide-styles.css` | 两份教程共用的阅读、目录与打印样式 |
| `includes/vlab-brand.html` / `includes/vlab-footer.html` | 渲染教程时使用的 The V Lab 共用页首与页脚 |
| `og.png` | 网站社交分享预览图 |
| `.nojekyll` | 让 GitHub Pages 原样发布静态文件 |
| `render.R` | 渲染项目根目录中的全部本地 R Markdown 源文件 |
| `build-sites.sh` | 生成 The V Lab 站点托管所需的静态发布包 |

## 本地渲染

安装所需 packages：

```r
install.packages(c("rmarkdown", "knitr"))
```

在项目目录运行：

```bash
Rscript render.R
```

渲染还需要 Pandoc；RStudio 已附带兼容的 Pandoc。

## 源文件策略

`.Rmd` 源文件仅保存在本地工作副本中，并通过 `.gitignore` 排除，因此不会上传到 GitHub。生成的 HTML 会保留已发布教程所需的教学代码和执行结果。

## 网站发布

GitHub Pages 从 `main` 分支发布网站：

<https://laboratoirev.github.io/RMarkdown_Skills/>
