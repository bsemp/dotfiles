##########
## UV - Extremely fast Python package and project manager, written in Rust.
##########
if command -v uv &>/dev/null; then
  eval "$(uv generate-shell-completion zsh)"
  eval "$(uvx --generate-shell-completion zsh)"
fi
