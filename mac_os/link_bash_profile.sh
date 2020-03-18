#!/bin/bash
#
# link ~/.bash_profile to .bash_profile
#
# author: Bean Zhang
# email: sjtuzb@gmail.com
#
bash_profile=~/.bash_profile
bash_profile_87boy=~/Bean/git/dot-files/mac_os/87boy.bash_profile
if [ -f "${bash_profile}" ]
then
	mv ${bash_profile} ${bash_profile}.bak
	ln -s ${bash_profile_87boy} ${bash_profile}
else
	ln -s ${bash_profile_87boy} ${bash_profile}
fi

