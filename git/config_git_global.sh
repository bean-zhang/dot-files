#!/bin/bash
#
# config git global
#
# author: Bean Zhang
# email: sjtuzb@gmail.com
#

git config --global -l

git config --global user.name "Bean Zhang"
git config --global user.email "sjtuzb@gmail.com"

git config --global core.editor vim
git config --global core.quotepath false

git config --global color.branch auto
git config --global color.diff auto
git config --global color.interactive auto
git config --global color.status auto
git config --global color.ui true

git config --global -l
