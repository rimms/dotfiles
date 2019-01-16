#
# Completions Settings
#

# Plugins
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-history-substring-search"

autoload -Uz compinit && compinit -u

setopt auto_list
setopt auto_menu
setopt auto_param_slash
setopt complete_aliases
setopt complete_in_word
setopt correct
setopt globdots
setopt list_types
setopt list_packed
setopt magic_equal_subst
setopt mark_dirs

zstyle ':completion:*' cache-path ~/.zsh-cache
zstyle ':completion:*' completer _complete _approximate _history _ignored _prefix
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-separator ':'
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' verbose yes
zstyle ':completion:*:default' menu select=2
zstyle ':completion:*:manuals' separate-sections true
zstyle ':completion:*:options' description 'yes'
