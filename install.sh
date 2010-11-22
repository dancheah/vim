#!/bin/sh

cd ~/.vim && git submodule init
cd ~/.vim && git submodule update
mkdir ~/.vim/tmp
cd ~/ && ln -s .vim/vimrc .vimrc 
cd ~/ && ln -s .vim/gvimrc .gvimrc 
