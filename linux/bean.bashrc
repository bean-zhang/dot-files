# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
    rxvt*) color_prompt=yes;;
    xterm*) color_prompt=yes;;
    linux*) color_prompt=yes;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

printf "\e[?2004l"

stty erase ^H
stty erase ^?

# prompt before every removal
# alias rm='rm -i'

# prompt once before removing more than three files, or
# when removing recursively; less intrusive than -i,
# while still giving protection against most mistakes
# alias rm='rm -I'

# prompt before every removal #
# alias rm=delete
delete()
{
    read -p "你确定要删除吗？(Are you sure to delete?)[y/n]" confirm
    [ $confirm == 'y' ] || [ $confirm == 'Y' ] && /bin/rm $@
}
