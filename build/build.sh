#!/usr/bin/sh

# consolidate into a single markdown document
markdown-pp book.mdpp -o book.md

# convert that into an epub document
pandoc \
  -o Book.epub metadata.yaml book.md \
  --toc --epub-stylesheet=stylesheet.css \
  --toc-depth=2
