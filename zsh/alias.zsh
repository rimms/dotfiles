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

if type ghq > /dev/null 2>&1; then
    if type peco > /dev/null 2>&1; then
        alias gcd='cd $(ghq list -p | peco --prompt "GIT REPOSITORY>")'
    fi
fi

function history-all {
    history -E 1
}
