#!/bin/bash
#
# link ~/.git-completion.bash to contrib/completion/git-completion.bash
#
# author: Bean Zhang
# email: sjtuzb@gmail.com
#

dot_files=~/Bean/git/github/dot-files
git_completion_bash=~/.git-completion.bash
git_completion_bash_87boy="${dot_files}/git/contrib/completion/git-completion.bash"
git_completion_zsh=~/.git-completion.zsh
git_completion_zsh_87boy="${dot_files}/git/contrib/completion/git-completion.zsh"

if [ -f "${git_completion_bash}" ]; then
    mv ${git_completion_bash} ${git_completion_bash}.bak
fi

ln -s ${git_completion_bash_87boy} ${git_completion_bash}

if [ -f "${git_completion_zsh}" ]; then
    mv ${git_completion_zsh} ${git_completion_zsh}.bak
fi

ln -s ${git_completion_zsh_87boy} ${git_completion_zsh}
