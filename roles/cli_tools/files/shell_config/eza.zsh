##########
## eza, A modern replacement for ls
##########
if command -v eza &>/dev/null; then
  # Override common ls aliases whith eza (https://eza.rocks) if available
  alias ls='eza'
  alias l='eza -lbF --git'
  alias la='eza -lbhHigUmuSa --time-style=long-iso --git --color-scale'
  alias ll='eza -lah'
  alias lt='eza --tree --level=2'
else
  # Override common ls aliases
  alias ls='ls -G'
  alias l='ls -lFh'
  alias la='ls -lAFhp'
  alias ll='ls -lAhp'
  alias lr='ls -tRFh'
  alias lt='ls -ltFh'
fi
