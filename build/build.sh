#!/bin/sh

# consolidate into a single markdown document
cat "../chapters/00 - Introduction.md" > book.md
echo "\n" >> book.md
cat "../chapters/01 - 5203 Pershing.md" >> book.md
echo "\n" >> book.md
cat "../chapters/02 - 1420 Terry.md" >> book.md
echo "\n" >> book.md
cat "../chapters/03 - 2324 1st.md" >> book.md
echo "\n" >> book.md
cat "../chapters/04 - 1122 24th.md" >> book.md
echo "\n" >> book.md
cat "../chapters/05 - 616 N Oakes.md" >> book.md
echo "\n" >> book.md
cat "../chapters/06 - 1414 N Oakes.md" >> book.md
echo "\n" >> book.md
cat "../chapters/07 - 3019 63rd.md" >> book.md
echo "\n" >> book.md
cat "../chapters/08 - The Summing Up.md" >> book.md
echo "\n" >> book.md
cat "../chapters/09 - Selling.md" >> book.md
echo "\n" >> book.md
cat "../chapters/10 - Flipping.md" >> book.md
echo "\n" >> book.md
cat "../chapters/11 - How much house can I afford?.md" >> book.md
echo "\n" >> book.md
cat "../chapters/12 - REITs.md" >> book.md
echo "\n" >> book.md
cat "../chapters/13 - The Low End.md" >> book.md
echo "\n" >> book.md
cat "../chapters/Appendix - Recommended Vendors.md" >> book.md
echo "\n" >> book.md
cat "../chapters/Appendix - Suggested Reading.md" >> book.md

# convert book.md into an epub document
#curl https://raw.githubusercontent.com/edwardtufte/tufte-css/gh-pages/tufte.css > stylesheet.css
curl https://raw.githubusercontent.com/mattharrison/epub-css-starter-kit/master/css/base.css > stylesheet.css

pandoc \
  -o Book.epub metadata.yaml book.md \
  --css=stylesheet.css
