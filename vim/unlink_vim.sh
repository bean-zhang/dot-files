#!/bin/bash
#
# unlink ~/.vimrc
#
# author:	Bin Zhang
# email:	sjtuzb@gmail.com
#

vimrc=~/.vimrc
vimrc_bak=~/.vimrc.bak
gvimrc=~/.gvimrc
gvimrc_bak=~/.gvimrc.bak
vim=~/.vim
vim_bak=~/.vim.bak

if [ -f "${vimrc_bak}" ]
then
	rm ${vimrc}
	mv ${vimrc_bak} ${vimrc}
else
	echo ".vimrc.bak file does not exist!"
fi

if [ -f "${gvimrc_bak}" ]
then
	rm ${gvimrc}
	mv ${gvimrc_bak} ${gvimrc}
else
	echo ".gvimrc.bak file does not exist!"
fi

if [ -d "${vim_bak}" ]
then
	rm ${vim}
	mv ${vim_bak} ${vim}
else
	echo "vim.bak directory does not exist!"
fi

