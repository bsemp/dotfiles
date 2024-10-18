
# Configure history
export HISTFILE=${ZDOTDIR}/.zsh_history
export HISTSIZE=10000
export SAVEHIST=${HISTSIZE}
# /!\ Needs "setopt extendedglob"
# "#" means optional. Ex: "vim#( *)#" matches "vi", "vim", "vim .*", "vi .*"
export HISTORY_IGNORE='([bf]g( *)#|l[alsh]#( *)#|history|cd( *)#|z( *)#|git add *|git reset *|pwd|exit|*--help*)'

# https://zsh.sourceforge.io/Doc/Release/Options.html#History
setopt BANG_HIST              # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY       # Write the history file in the ':start:elapsed;command' format.
setopt INC_APPEND_HISTORY     # Write to the history file immediately, not when the shell exits.
setopt HIST_EXPIRE_DUPS_FIRST # Expire a duplicate event first when trimming history.
setopt HIST_IGNORE_DUPS       # Do not record an event that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS   # Delete an old recorded event if a new event is a duplicate.
setopt HIST_FIND_NO_DUPS      # Do not display a previously found event.
setopt HIST_IGNORE_SPACE      # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS      # Do not write a duplicate event to the history file.
setopt HIST_VERIFY            # Do not execute immediately upon history expansion.
setopt HIST_BEEP              # Beep when accessing non-existent history.

# https://zsh.sourceforge.io/Doc/Release/Functions.html#Hook-Functions
# https://zsh.sourceforge.io/Doc/Release/Parameters.html#Parameters-Used-By-The-Shell
zshaddhistory() {
  emulate -L zsh
  # HISTORY_IGNORE should use EXTENDED_GLOB syntax
  setopt extendedglob
  [[ $1 != ${~HISTORY_IGNORE} ]]
}
