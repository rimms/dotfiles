#
# Pathes Settings
#

# Homebrew
if [[ "${OSTYPE}" == "darwin"* ]]; then
    export PATH="/usr/local/sbin:${PATH}"
fi

# Python via pyenv-virtualenv
export PYENV_ROOT="${HOME}/.pyenv"
if [ -d "${PYENV_ROOT}" ]; then
    export PATH="${PYENV_ROOT}/bin:${PATH}"
    eval "$(pyenv init --path)"
    eval "$(pyenv virtualenv-init -)"
fi

# Go
if [[ "${OSTYPE}" == "darwin"* ]]; then
    if type go > /dev/null 2>&1; then
        export GOPATH="${HOME}/.go"
        export PATH="${GOPATH}/bin:${PATH}"
    fi
fi
