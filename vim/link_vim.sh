#!/bin/bash
#
# link ~/.vimrc to .vimrc
#
# author: Bin Zhang
# email: sjtuzb@gmail.com
#

vimrc=~/.vimrc
vimrc_87boy=~/git/dot-files/vim/87boy.vimrc
vim=~/.vim
vim_87boy=~/git/dot-files/vim/.vim

if [ -f "${vimrc}" ]
then
	mv ${vimrc} ${vimrc}.bak
	ln -s ${vimrc_87boy} ${vimrc}
else
	ln -s ${vimrc_87boy} ${vimrc}
fi

if [ -d "${vim}" ]
then
    mv ${vim} ${vim}.bak
    ln -s ${vim_87boy} ${vim}
else
    ln -s ${vim_87boy} ${vim}
fi

