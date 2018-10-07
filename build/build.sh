#!/bin/sh

# consolidate into a single markdown document
cat "../chapters/00 - Introduction.md" > book.md
cat "../chapters/01 - 5203 Pershing.md" >> book.md
cat "../chapters/02 - 1420 Terry.md" >> book.md
cat "../chapters/03 - 2324 1st.md" >> book.md
cat "../chapters/04 - 1122 24th.md" >> book.md
cat "../chapters/05 - 616 N Oakes.md" >> book.md
cat "../chapters/06 - 1414 N Oakes.md" >> book.md
cat "../chapters/07 - 3019 63rd.md" >> book.md
cat "../chapters/08 - The Summing Up.md" >> book.md
cat "../chapters/09 - Selling.md" >> book.md
cat "../chapters/10 - Flipping.md" >> book.md
cat "../chapters/11 - How much house can I afford?.md" >> book.md
cat "../chapters/12 - REITs.md" >> book.md
cat "../chapters/13 - The Low End.md" >> book.md
cat "../chapters/Appendix - Recommended Vendors.md" >> book.md
cat "../chapters/Appendix - Suggested Reading.md" >> book.md

# convert book.md into an epub document
pandoc \
  -o Book.epub metadata.yaml book.md \
  --toc \
  --toc-depth=2 \
  --css=stylesheet.css
