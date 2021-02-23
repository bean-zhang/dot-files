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

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

export PATH=$PATH:~/Bean/software/crawler/

# export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.aliyun.com/homebrew/homebrew-bottles
# export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git"

alias jumpserver="ssh jumpserver"
alias relay="ssh zhangbin@relay.bilibili.co"

#export PATH="/usr/local/opt/mysql-client/bin:$PATH"
#export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
