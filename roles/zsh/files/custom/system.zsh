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

# System
if command -v exa &>/dev/null; then
  # Override common ls aliases whith exa (https://the.exa.website/) if available
  alias ls='exa'
  alias l='exa -lbF --git'
  alias la='exa -lbhHigUmuSa --time-style=long-iso --git --color-scale'
  alias ll='exa -lah'
  alias lt='exa --tree --level=2'
else
  # Override common ls aliases
  alias ls='ls -G'
  alias l='ls -lFh'
  alias la='ls -lAFhp'
  alias ll='ls -lAhp'
  alias lr='ls -tRFh'
  alias lt='ls -ltFh'
fi
