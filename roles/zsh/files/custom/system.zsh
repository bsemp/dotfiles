# ZSHconfig edition
alias zshenv="${EDITOR:-vim} ${ZDOTDIR}/.zshenv"
alias zshrc="${EDITOR:-vim} ${ZDOTDIR}/.zshrc"
alias zshprofile="${EDITOR:-vim} ${ZDOTDIR}/.zprofile"
alias zshlogin="${EDITOR:-vim} ${ZDOTDIR}/.zlogin"
alias zshlogout="${EDITOR:-vim} ${ZDOTDIR}/.zlogout"
alias antigenconfig="${EDITOR:-vim} ${ZDOTDIR}/.antigenrc"
alias p10kconfig="${EDITOR:-vim} ${ZDOTDIR}/.p10k.zsh"

# Make XDG_CONFIG explicit
# https://specifications.freedesktop.org/basedir-spec/latest/ar01s03.html
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_STATE_HOME="${HOME}/.local/state"
export XDG_DATA_DIRS="/usr/local/share/:/usr/share/"
export XDG_CONFIG_DIRS="/etc/xdg"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_RUNTIME_DIR=""
