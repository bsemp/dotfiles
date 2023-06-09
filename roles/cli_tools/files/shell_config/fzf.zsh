##########
## Fuzzy Finder
##########
if command -v fzf &>/dev/null; then
  # Auto-completion
  [[ $- == *i* ]] && source "$(brew --prefix)/opt/fzf/shell/completion.zsh" 2> /dev/null

  # Key bindings
  source "$(brew --prefix)/opt/fzf/shell/key-bindings.zsh"

  export FZF_COMPLETION_TRIGGER='~~'
  export FZF_DEFAULT_OPTS='--multi --height 50% --layout=reverse --border'
  # Use The silver searcher and enable hidden files
  if command -v ag &>/dev/null; then
    export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
  fi
  if command -v bat &>/dev/null; then
    alias fzfp='fzf --preview "bat --style=numbers --color=always --line-range :500 {}"'
  else
    alias fzfp='fzf --preview "cat {}"'
  fi
fi
