# Add homebrew bin, sbin to PATH
if [[ "$(uname)" == 'Darwin' ]]; then
    export PATH="$(brew --prefix)/bin:$(brew --prefix)/sbin:${PATH}"
fi
