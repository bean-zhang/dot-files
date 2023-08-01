#!/bin/bash
#
# link ~/.profile to .profile
#
# author: Bean Zhang
# email: sjtuzb@gmail.com
#
dot_files=~/Bean/git/github/dot-files
bash_profile=~/.bash_profile
bash_profile_87boy="${dot_files}/macos/87boy.bash_profile"
profile=~/.profile
profile_87boy="${dot_files}/macos/87boy.profile"
zprofile=~/.zprofile
zprofile_87boy="${dot_files}/macos/87boy.zprofile"

if [ -f "${bash_profile}" ]; then
    mv ${bash_profile} ${bash_profile}.bak
fi

ln -s ${bash_profile_87boy} ${bash_profile}

if [ -f "${profile}" ]; then
    mv ${profile} ${profile}.bak
fi

ln -s ${profile_87boy} ${profile}

if [ -f "${zprofile}" ]; then
    mv ${zprofile} ${zprofile}.bak
fi

ln -s ${zprofile_87boy} ${zprofile}
