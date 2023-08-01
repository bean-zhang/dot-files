#!/bin/bash
#
# link ~/.condarc to .condarc
#
# author: Bean Zhang
# email: sjtuzb@gmail.com
#

dot_files=~/Bean/git/github/dot-files
conda_rc=~/.condarc
conda_rc_87boy="${dot_files}/conda/87boy.condarc"

if [ -f "${conda_rc}" ]; then
    mv ${conda_rc} ${conda_rc}.bak
fi

ln -s ${conda_rc_87boy} ${conda_rc}
