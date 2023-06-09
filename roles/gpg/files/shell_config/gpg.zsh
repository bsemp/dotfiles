if command -v gpg &>/dev/null; then
  if [[ "${SHELL}" =~ 'zsh' ]]; then
    export GPG_TTY=${TTY}
  else
    export GPG_TTY=$(tty)
  fi
fi
