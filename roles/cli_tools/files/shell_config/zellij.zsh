##########
## zellij, terminal multiplexer
##########
# Autostart zellij only in alacritty terminal (prevent zellij from starting in vscode integrated terminal)
if [[ "${TERM}" == "alacritty" ]]; then
  if command -v zellij &>/dev/null; then
    export ZELLIJ_AUTO_ATTACH="true"
    eval "$(zellij setup --generate-auto-start zsh)"
  fi
fi
