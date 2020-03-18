#!/bin/bash
#
# link ~/.git-completion.bash to contrib/completion/git-completion.bash
#
# author: Bean Zhang
# email: sjtuzb@gmail.com
#
git_completion=~/.git-completion.bash
git_completion_87boy=~/Bean/git/dot-files/git/contrib/completion/git-completion.bash
if [ -f "${git_completion}" ]
then
	mv ${git_completion} ${git_completion}.bak
fi

ln -s ${git_completion_87boy} ${git_completion}

