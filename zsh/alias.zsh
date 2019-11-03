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

# Git repositories managed by ghq
if type ghq > /dev/null 2>&1; then
    if type peco > /dev/null 2>&1; then
        function ghq-repository-selector() {
            ghq list -p | peco --prompt "GIT REPOSITORY>"
        }
        alias -g git_repos='$(ghq-repository-selector)'
    fi
fi

# Docker contaoners and images
if type peco > /dev/null 2>&1; then
    function docker-container-selector() {
        docker ps --all --format "{{.ID}}\t{{.Names}}\t<{{.Status}}>" | \
            peco --prompt "DOCKER CONTAINER>" | \
            awk -F" " '{print $1}'
    }
    function docker-image-selector() {
        docker images --format "{{.ID}}\t{{.Repository}}:{{.Tag}}\t<{{.CreatedAt}}>" | \
            peco --prompt "DOCKER IMAGE>" | \
            awk -F" " '{print $1}'
    }
    alias -g docker_containers='$(docker-container-selector)'
    alias -g docker_images='$(docker-image-selector)'
fi

function history-all {
    history -E 1
}
