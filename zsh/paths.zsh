#
# Pathes Settings
#

# Homebrew
if [[ "${OSTYPE}" == "darwin"* ]]; then
    export PATH="/usr/local/sbin:$PATH"
fi

# Python via pyenv-virtualenv
export PYENV_ROOT=${HOME}/.pyenv
if [ -d "${PYENV_ROOT}" ]; then
    export PATH=${PYENV_ROOT}/bin:$PATH
        eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi
