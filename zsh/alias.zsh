#
# Alias Settings
#

case "${OSTYPE}" in
    darwin*)
        alias ls='ls -G'
        ;;
    *)
        alias ls='ls --color=auto'
        ;;
esac
alias ll='ls -lF'
alias la='ll -a'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias mkdir='mkdir -p'

alias less='less -R'

function history-all {
    history -E 1
}
