#!/bin/sh
set -eu

project_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
dist_dir="$project_dir/dist"

case "$dist_dir" in
  "$project_dir"/dist) ;;
  *) echo "Refusing to replace an unexpected build directory." >&2; exit 2 ;;
esac

rm -rf -- "$dist_dir"
mkdir -p "$dist_dir/client" "$dist_dir/server"

cp "$project_dir/index.html" "$dist_dir/client/index.html"
cp "$project_dir/styles.css" "$dist_dir/client/styles.css"
cp "$project_dir/guide-styles.css" "$dist_dir/client/guide-styles.css"
cp "$project_dir/r_markdown_guide_en.html" "$dist_dir/client/r_markdown_guide_en.html"
cp "$project_dir/r_markdown_guide_zh.html" "$dist_dir/client/r_markdown_guide_zh.html"
cp "$project_dir/og.png" "$dist_dir/client/og.png"
cp "$project_dir/.nojekyll" "$dist_dir/client/.nojekyll"

cp "$project_dir/.sites/index.js" "$dist_dir/server/index.js"
cp "$project_dir/.sites/wrangler.json" "$dist_dir/server/wrangler.json"

printf 'Built Sites output in %s\n' "$dist_dir"
