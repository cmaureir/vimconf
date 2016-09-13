#!/bin/bash

# Init and update submodules
echo "Submodule init..."
git submodule init
echo "Submodule update..."
git submodule update
echo "Submodule updating each repo..."
git submodule foreach git pull origin master
