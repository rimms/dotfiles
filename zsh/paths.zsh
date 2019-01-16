#
# Pathes Settings
#

# Python via pyenv-virtualenv
export PYENV_ROOT=${HOME}/.pyenv
if [ -d "${PYENV_ROOT}" ]; then
    export PATH=${PYENV_ROOT}/bin:$PATH
        eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi