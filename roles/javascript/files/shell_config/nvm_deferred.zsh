export NVM_DIR="$(brew --prefix)/opt/nvm"
# Load nvm
[ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && source "$(brew --prefix)/opt/nvm/nvm.sh" --no-use
# Load nvm bash_completion
[ -s "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" ] && source "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm"
