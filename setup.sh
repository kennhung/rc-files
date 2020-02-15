#!/bin/bash
# Setup file for kenn's rc-file

git clone https://github.com/kennhung/rc-files.git

mkdir rc_old

cd rc-files
find ../.vimrc -exec mv ../{} ../rc_old/ \;
find ../.tmux.conf -exec mv ../{} ../rc_old/ \;
find ../.zshrc -exec mv ../{} ../rc_old/ \;

cd ..
ln -s rc-files/.vimrc .
ln -s rc-files/.tmux.conf .
ln -s rc-files/.zshrc .
