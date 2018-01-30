#!/bin/bash

GIT=/usr/bin/git

$GIT submodule update --init --recursive
$GIT submodule foreach git pull origin master
