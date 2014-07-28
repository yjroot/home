#! /bin/bash

# Install vim
which vim > /dev/null
if [ "$?" -ne "0" ]; then
	echo "Install vim"
	sudo apt-get --yes install vim
fi 

# Install Vundle plugin.
if [ ! -d "$HOME/.vim/bundle/Vundle.vim" ]; then
	echo "Install Vundle plugin."
	git clone https://github.com/gmarik/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
	vim +PluginInstall +PluginClean +qall
fi
