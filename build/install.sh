#!/usr/bin/sh

### apparently I don't have pip
brew install python@2

### markdown-pp
cd ~
curl -O https://codeload.github.com/jreese/markdown-pp/tar.gz/v1.4
mv v1.4 markdown-pp-1.4.tar.gz
tar -xvf markdown-pp-1.4.tar.gz
cd markdown-pp-1.4
pip install MarkdownPP

### pandoc
sudo chown -R $(whoami) /usr/local/bin /usr/local/lib
brew install pandoc
