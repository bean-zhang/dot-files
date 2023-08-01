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
