##########
## exa, A modern replacement for ls
##########
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
