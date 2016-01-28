#!/bin/bash
#
# link ~/.bash_profile to .bash_profile
#
# author: Bin Zhang
# email: sjtuzb@gmail.com
#
bash_profile=~/.bash_profile
bash_profile_87boy=~/git/dot-files/macos/87boy.bash_profile
if [ -f "${bash_profile}" ]
then
	mv ${bash_profile} ${bash_profile}.bak
	ln -s ${bash_profile_87boy} ${bash_profile}
else
	ln -s ${bash_profile_87boy} ${bash_profile}
fi

