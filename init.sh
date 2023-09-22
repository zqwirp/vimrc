#!/usr/bin/env bash

if [ -f autoload/plug.vim ]
then
	echo "Message: vim-plug already installed"
else
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	vim +PlugInstall +qall
fi

rm ./ftplugin/javascriptreact.vim
ln -s ./ftplugin/javascript.vim ./ftplugin/javascriptreact.vim
