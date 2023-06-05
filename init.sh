#!/usr/bin/env bash

if [ -f autoload/plug.vim ]
then
	echo "tai"
else
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

ln -s ./ftplugin/javascript.vim ./ftplugin/javascriptreact.vim
