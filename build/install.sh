#!/usr/bin/sh

### apparently I don't have pip
brew install python@2

### markdown-pp
cd ~
git clone https://github.com/jreese/markdown-pp.git
cd markdown-pp
pip install MarkdownPP

### pandoc
sudo chown -R $(whoami) /usr/local/bin /usr/local/lib
brew install pandoc
