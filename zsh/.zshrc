export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="spaceship"

plugins=(
    django
    docker
    fast-syntax-highlighting
    gatsby
    git
    heroku
    mysql-macports
    npm
    nvm
    poetry
    postgres
    pyenv
    yarn
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration
export editor=nvim
export BREW_HOME=/usr/local/opt

# nvm
export NVM_DIR=$HOME/.nvm
[ -s "$BREW_HOME/nvm/nvm.sh" ] && \. "$BREW_HOME/nvm/nvm.sh"  # This loads nvm
[ -s "$BREW_HOME/nvm/etc/bash_completion" ] && \. "$BREW_HOME/nvm/etc/bash_completion"  # This loads nvm bash_completion

# pyenv
export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init -)"

# poetry
export PATH=$HOME/.poetry/bin:$PATH

# openssl
export LIBRARY_PATH=$LIBRARY_PATH:/usr/local/opt/openssl/lib/

# flutter
export PATH=$HOME/.flutter/bin:$PATH

# okteto
export KUBECONFIG=$HOME/Downloads/okteto-kube.config:${KUBECONFIG:-$HOME/.kube/config}
