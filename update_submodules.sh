#!/bin/bash

GIT=/usr/bin/git

# Init and update submodules
echo "Submodule init..."
$GIT submodule init
echo "Submodule update..."
$GIT submodule update
echo "Submodule updating each repo..."
$GIT submodule foreach git pull origin master
