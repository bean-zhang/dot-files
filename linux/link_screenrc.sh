#!/bin/bash
#
# link ~/.screenrc to .screenrc
#
# author: Bean Zhang
# email: sjtuzb@gmail.com
#

dot_files=~/Bean/git/github/dot-files
screen_rc=~/.screenrc
screen_rc_87boy="${dot_files}/linux/87boy.screenrc"

if [ -f "${screen_rc}" ]; then
    mv ${screen_rc} ${screen_rc}.bak
fi

ln -s ${screen_rc_87boy} ${screen_rc}
