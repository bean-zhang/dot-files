export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export PATH="/usr/local/sbin:$PATH"

export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"

alias ll="ls -aFGhl"

export MY_VIM_RC=~/.vimrc

if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

if [ -d $HOME/Library/Python/3.6/bin ]; then
    export PATH=$HOME/Library/Python/3.6/bin:$PATH
fi

# added by Anaconda3 5.2.0 installer
export PATH="/Users/admin/anaconda3/bin:$PATH"

# added by spark-2.3.1-bin-hadoop2.7
export PATH="/Users/admin/software/spark/spark-current-version/bin:$PATH"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

