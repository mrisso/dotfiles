#!/bin/sh
# Copy the files to .emacs.d

python -mplatform | grep -qi Ubuntu && sudo apt-get install texinfo || HOMEBREW_NO_AUTO_UPDATE=1 brew install texinfo
python -mplatform | grep -qi Ubuntu && sudo apt-get install poppler-utils || HOMEBREW_NO_AUTO_UPDATE=1 brew install poppler-utils 

EMACS_DIR="~/.emacs.d"
CEDET_DIR="~/.emacs.d/cedet"

if [ ! -d "$EMACS_DIR" ]; then
    echo "Creating .emacs.d/ ..."
    mkdir ~/.emacs.d/
    cp asmRef.pdf ~/.emacs.d/
fi

cp init.el ~/.emacs.d/
cp configuration.org ~/.emacs.d/

# Installing CEDET

if [ ! -d "$CEDET_DIR" ]; then
    echo "Downloading CEDET ..."
    git clone http://git.code.sf.net/p/cedet/git ~/.emacs.d/cedet
fi

cd ~/.emacs.d/cedet/
make

cd contrib
make
