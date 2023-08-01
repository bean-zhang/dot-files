#!/bin/bash
#
# link ~/.git-completion.bash to contrib/completion/git-completion.bash
#
# author: Bean Zhang
# email: sjtuzb@gmail.com
#

dot_files=~/Bean/git/github/dot-files
git_completion=~/.git-completion.bash
git_completion_87boy="${dot_files}/git/contrib/completion/git-completion.bash"

if [ -f "${git_completion}" ]; then
    mv ${git_completion} ${git_completion}.bak
fi

ln -s ${git_completion_87boy} ${git_completion}
