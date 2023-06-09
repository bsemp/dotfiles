##########
## Starship Prompt
##########
if command -v starship &>/dev/null; then
  export STARSHIP_CONFIG="${XDG_CONFIG_HOME}/starship/starship.toml"
  export STARSHIP_CACHE="${XDG_CONFIG_HOME}/starship"
  eval "$(starship init zsh)"
fi
