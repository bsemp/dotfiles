##########
## zellij, terminal multiplexer
##########
# Autostart zellij but prevent starting in vscode integrated terminal
if [[ "${TERM_PROGRAM}" != "vscode" ]]; then
  if command -v zellij &>/dev/null; then
    export ZELLIJ_AUTO_ATTACH="true"
    eval "$(zellij setup --generate-auto-start zsh)"
  fi
fi
