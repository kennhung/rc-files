#!/bin/bash
# Setup file for kenn's rc-file

git clone https://github.com/kennhung/rc-files.git

mkdir rc_old

read -r -p "Install .vimrc? [y/N] " response
if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]
then
	# install vimrc
	cd rc-files
	find ../.vimrc -exec mv ../{} ../rc_old/ \;
	cd ..
	ln -s rc-files/.vimrc .
fi

read -r -p "Install .tmux.conf? [y/N] " response
if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]
then
	# install vimrc
        cd rc-files
        find ../.tmux.conf -exec mv ../{} ../rc_old/ \;
        cd ..
        ln -s rc-files/.tmux.conf .
fi


