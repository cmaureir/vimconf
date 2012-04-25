#!/bin/bash

# Init and update submodules
echo "Submodule init..."
git submodule init
echo "Submodule update..."
git submodule update
echo "Submodule updating each repo..."
git submodule foreach git pull origin master

# Danger zone, only if you want to use *only* this configuration
rm -rf ~/.vim
rm -f ~/.vimrc
cp -r .vim/ ~/
cp .vimrc ~/
