
# Configure history
export HISTFILE=${ZDOTDIR}/.zsh_history
export HISTSIZE=50000
export SAVEHIST=${HISTSIZE}
# /!\ Needs "setopt extendedglob"
# "#" means optional. Ex: "vim#( *)#" matches "vi", "vim", "vim .*", "vi .* "
export HISTORY_IGNORE='([bf]g *|l[alsh]#( *)#|history|cd( *)#|z( *)#|git add *|git reset *|pwd|exit|date|*--help|vault*)'

# https://zsh.sourceforge.io/Doc/Release/Options.html#History
setopt HIST_IGNORE_SPACE
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_NO_STORE

# https://zsh.sourceforge.io/Doc/Release/Functions.html#Hook-Functions
# https://zsh.sourceforge.io/Doc/Release/Parameters.html#Parameters-Used-By-The-Shell
zshaddhistory() {
  emulate -L zsh
  # HISTORY_IGNORE should use EXTENDED_GLOB syntax
  setopt extendedglob
  [[ $1 != ${~HISTORY_IGNORE} ]]
}
