export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export PATH="/usr/local/sbin:$PATH"

export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"

alias ll="ls -aFGhl"

export MY_VIM_RC=~/.vimrc

if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

