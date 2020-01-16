# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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

# Lines configured by zsh-newuser-install
HISTFILE=${ZDOTDIR}/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
# End of lines configured by zsh-newuser-install

# Define the default editor
export EDITOR="/usr/bin/vim"

# Download Antigen plugin in custom zsh configuration directory
if [[ ! -f ${ZDOTDIR}/antigen.zsh ]]; then
  curl --silent -L git.io/antigen > "${ZDOTDIR}/antigen.zsh"
fi

# Load Antigen
source ${ZDOTDIR}/antigen.zsh

# Load antigen configuration
source ${ZDOTDIR}/.antigenrc

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
