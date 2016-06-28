#!/bin/bash
#
# link ~/.vimrc to .vimrc
#
# author: Bean Zhang
# email: sjtuzb@gmail.com
#

dot_files=~/git/dot-files
vimrc=~/.vimrc
vimrc_87boy=${dot_files}/vim/.vimrc
gvimrc=~/.gvimrc
gvimrc_87boy=${dot_files}/vim/.gvimrc
vim=~/.vim
vim_87boy=${dot_files}/vim/.vim

if [ -f "${vimrc}" ]
then
	mv ${vimrc} ${vimrc}.bak
	ln -s ${vimrc_87boy} ${vimrc}
else
	ln -s ${vimrc_87boy} ${vimrc}
fi

if [ -f "${gvimrc}" ]
then
	mv ${gvimrc} ${gvimrc}.bak
	ln -s ${gvimrc_87boy} ${gvimrc}
else
	ln -s ${gvimrc_87boy} ${gvimrc}
fi

if [ -d "${vim}" ]
then
    mv ${vim} ${vim}.bak
    ln -s ${vim_87boy} ${vim}
else
    ln -s ${vim_87boy} ${vim}
fi

