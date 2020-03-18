#!/bin/bash
#
# link ~/.vimrc to .vimrc
#
# author: Bean Zhang
# email: sjtuzb@gmail.com
#

dot_files=~/Bean/git/dot-files
vimrc=~/.vimrc
vimrc_87boy=${dot_files}/vim/.vimrc
gvimrc=~/.gvimrc
gvimrc_87boy=${dot_files}/vim/.gvimrc
vim=~/.vim
vim_87boy=${dot_files}/vim/.vim

if [ -f "${vimrc}" ]
then
    mv ${vimrc} ${vimrc}.bak
fi

ln -s ${vimrc_87boy} ${vimrc}

if [ -f "${gvimrc}" ]
then
    mv ${gvimrc} ${gvimrc}.bak
fi

ln -s ${gvimrc_87boy} ${gvimrc}

if [ -d "${vim}" ]
then
    mv ${vim} ${vim}.bak
fi

ln -s ${vim_87boy} ${vim}
