#!/bin/bash
#
# unlink ~/.vimrc
#
# author:	Bin Zhang
# email:	sjtuzb@gmail.com
#
vimrc=~/.vimrc
vimrc_bak=~/.vimrc.bak
if [ -f "${vimrc_bak}" ]
then
	rm ${vimrc}
	mv ${vimrc_bak} ${vimrc}
else
	echo "vimrc_bak does not exist!"
fi

