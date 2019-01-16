#
# Zsh Settings
#

# LANG
if [ -z "${LANG}" ]; then
    export LANG=en_US.UTF-8
fi

# Editor
export EDITOR=vim

# Enable keybind
bindkey -e

# Initialize plugins Manager
export ZPLUG_HOME="${ZDOTDIR}/zplug"
source ${ZPLUG_HOME}/init.zsh

# Load settings
for f in $(find "${ZDOTDIR}" -type d -name zplug -prune -o -type f -name "*.zsh"); do
    source "${f}"
done

# Load settings for local environment
if [ -d "${DOTDIR}/zsh.local" ]; then
    for f in $(find "${DOTDIR}/zsh.local" -type f); do
        source "${f}"
    done
fi

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    zplug install
fi

# Source plugins and add commands to $PATH
zplug load
