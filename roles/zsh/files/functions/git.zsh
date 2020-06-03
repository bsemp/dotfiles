# Clean remote deleted and local untracked (gone) branches
function git-clean() {
  git fetch --prune
  for branch in $(git for-each-ref --format '%(refname) %(upstream:track)' refs/heads | awk '$2 == "[gone]" {sub("refs/heads/", "", $1); print $1}'); do
    git branch -D $branch;
  done
}

# Find gitmojis.
# Example: 'gitmojis config' -> { ... "code": ":wrench:", ... }
function gitmojis() {
  local _str="${1}"
  curl -s https://raw.githubusercontent.com/carloscuesta/gitmoji/master/src/data/gitmojis.json | jq --arg STR "${_str}" '.gitmojis[] | se
}