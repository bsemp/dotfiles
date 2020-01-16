# ZSHconfig edition
alias zshenv="${EDITOR:-vim} ${ZDOTDIR}/.zshenv"
alias zshrc="${EDITOR:-vim} ${ZDOTDIR}/.zshrc"
alias zshprofile="${EDITOR:-vim} ${ZDOTDIR}/.zprofile"
alias zshlogin="${EDITOR:-vim} ${ZDOTDIR}/.zlogin"
alias zshlogout="${EDITOR:-vim} ${ZDOTDIR}/.zlogout"
alias antigenconfig="${EDITOR:-vim} ${ZDOTDIR}/.antigenrc"
alias p10kconfig="${EDITOR:-vim} ${ZDOTDIR}/.p10k.zsh"

# System
alias ll="ls -lAhp --color=auto"

# Terraform
alias tf="terraform"
alias tfi="terraform import"
alias tfw="terraform workspace"
alias tfs="terraform state"

# Kubernetes
alias k="kubectl"
alias kx="kubectx"
