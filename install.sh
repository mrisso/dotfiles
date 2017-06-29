# Copy the files to .emacs.d

if [ -d "~/.emacs.d/" ]; then
	echo "Creating .emacs.d/ ..."
    mkdir ~/.emacs.d/
fi

cp init.el ~/.emacs.d/
cp configuration.org ~/.emacs.d/

# Installing CEDET

if [ -d "~/.emacs.d/cedet/" ]; then
	echo "Downloading CEDET ..."
    git clone http://git.code.sf.net/p/cedet/git ~/.emacs.d/cedet
fi

cd ~/.emacs.d/cedet/
make

cd contrib
make
