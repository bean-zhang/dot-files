alias ll="ls -aFGhl"
#alias jumpserver="ssh bzhang@jumpserver.internal.leapstack.cn"
alias jumpserver="ssh jumpserver"
#alias relay="ssh zhangbin@relay.bilibili.co"
alias relay="ssh relay"

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export PATH="/usr/local/sbin:$PATH"
#export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
export MY_VIM_RC=~/.vimrc

# Set PATH, MANPATH, etc., for Homebrew.
export HOMEBREW_API_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles/api"
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles"
export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git"
export HOMEBREW_PIP_INDEX_URL="https://pypi.tuna.tsinghua.edu.cn/simple"
system=`(uname -m)`
if [ "${system}" = "arm64" ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi
if [ "${system}" = "x86_64" ]; then
    eval "$(/usr/local/bin/brew shellenv)"
fi

# Set PATH fro pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/local/Caskroom/miniforge/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/Caskroom/miniforge/base/etc/profile.d/conda.sh" ]; then
        . "/usr/local/Caskroom/miniforge/base/etc/profile.d/conda.sh"
    else
        export PATH="/usr/local/Caskroom/miniforge/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

if [ -f ~/.git-completion.zsh ]; then
#    . ~/.git-completion.zsh
fi

