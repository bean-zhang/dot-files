export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

alias ll="ls -aFGhl"

export PATH="/usr/local/sbin:$PATH"
export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
export MY_VIM_RC=~/.vimrc

if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

# added by spark-2.3.4-bin-hadoop2.7
export PATH=~/Bean/software/spark/spark-current-version/bin:$PATH

# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/zb/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/zb/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/zb/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        export PATH="/Users/zb/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

export PATH=$PATH:~/Bean/software/crawler/

export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.aliyun.com/homebrew/homebrew-bottles

alias jumpserver="ssh jumpserver"
