# Add homebrew bin, sbin to PATH
if [[ "$(uname)" == 'Darwin' ]]; then
    export PATH="$(brew --prefix)/bin:$(brew --prefix)/sbin:${PATH}"
fi

# ZSHconfig edition
alias zshenv="${EDITOR:-vim} ${ZDOTDIR}/.zshenv"
alias zshrc="${EDITOR:-vim} ${ZDOTDIR}/.zshrc"
alias zshprofile="${EDITOR:-vim} ${ZDOTDIR}/.zprofile"
alias zshlogin="${EDITOR:-vim} ${ZDOTDIR}/.zlogin"
alias zshlogout="${EDITOR:-vim} ${ZDOTDIR}/.zlogout"
alias antigenconfig="${EDITOR:-vim} ${ZDOTDIR}/.antigenrc"
alias p10kconfig="${EDITOR:-vim} ${ZDOTDIR}/.p10k.zsh"
