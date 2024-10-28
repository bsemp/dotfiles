##########
## Fuzzy Finder
##########
if command -v fzf &>/dev/null; then
  # Auto-completion and key bindings
  source <(fzf --zsh)

  export FZF_COMPLETION_TRIGGER='~~'
  export FZF_COMPLETION_DIR_COMMANDS="cd pushd rmdir tree z"
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

# If atuin is installed, and ATUIN_NOBIND is not true, re-bind atuin search widget to Ctrl + r
# because "$(brew --prefix)/opt/fzf/shell/key-bindings.zsh" overwrites it with fzf's search widget
# and do not provide a way to deactivate this binding
if command -v atuin &>/dev/null; then
  if [[ -z "${ATUIN_NOBIND}" ]] || [[ "${ATUIN_NOBIND}" != "true" ]]; then
    bindkey -M emacs '^R' _atuin_search_widget
    bindkey -M vicmd '^R' _atuin_search_widget
    bindkey -M viins '^R' _atuin_search_widget
  fi
fi
