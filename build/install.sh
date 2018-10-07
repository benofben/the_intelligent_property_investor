#!/usr/bin/sh

### pandoc
sudo chown -R $(whoami) /usr/local/bin /usr/local/lib
brew install pandoc

### markdown-pp
curl -O https://github.com/jreese/markdown-pp/archive/v1.4.tar.gz
pip install MarkdownPP
