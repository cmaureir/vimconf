#!/bin/bash

# Init and update submodules
git submodule init
git submodule update

# Danger zone, only if you want to use *only* this configuration
rm -rf ~/.vim
rm -f ~/.vimrc
cp -r .vim/ ~/
cp .vimrc ~/
