# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Define the default shell and editor
if type brew &>/dev/null; then
  export SHELL="$(brew --prefix)/bin/zsh"
  export EDITOR="$(brew --prefix)/bin/vim"
else
  export SHELL="/bin/zsh"
  export EDITOR="/usr/bin/vim"
fi

# Define the default language
export LANG="en_US.UTF-8"

# make Homebrew’s completions available in zsh
if type brew &>/dev/null; then
  fpath+="$(brew --prefix)/share/zsh/site-functions"
fi

# Custom completion file directory (must be set before `compinit`)
# Completion files must start with "_" (ex "_poetry")
fpath+="${ZDOTDIR}/completions"

# The following lines were added by compinstall
zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' insert-unambiguous true
zstyle ':completion:*' list-colors ''
zstyle :compinstall filename "${ZDOTDIR}/.zshrc"

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Enable bash completion functions in ZSH
autoload -Uz bashcompinit
bashcompinit

# Download Antigen plugin in custom zsh configuration directory
if [[ ! -s ${ZDOTDIR}/antigen.zsh ]]; then
  curl --silent -L git.io/antigen > "${ZDOTDIR}/antigen.zsh"
fi

# Load Antigen
ANTIGEN_CACHE=false # FIX Completion: https://github.com/zsh-users/antigen/issues/603#issuecomment-776286903
source ${ZDOTDIR}/antigen.zsh

# Load antigen configuration
source ${ZDOTDIR}/.antigenrc 2&> /dev/null

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
source ${ZDOTDIR}/.p10k.zsh

# Functions
for FUNCTIONS in ${ZDOTDIR}/functions/*.zsh; do
    source "${FUNCTIONS}"
done

# Other
for OTHERS in ${ZDOTDIR}/custom/*.zsh; do
    source "${OTHERS}"
done
