# Dotfiles

## Prerequisites

### Install MacOS Xcode Command line tools

```bash
xcode-select --install
```

### Install Homebrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Activate
eval "$(/opt/homebrew/bin/brew shellenv)"
```

### Setup python venv

#### Using pipx

```bash
# Install poetry
brew install pipx
pipx ensurepath
pipx install poetry

# Install dependencies
poetry install --no-root
```

## Bootstrap

### Install all

```bash
poetry run ansible-playbook playbooks/main.yml
```

### Select components to install

#### Get a list of available tags

```bash
poetry run ansible-playbook playbooks/main.yml --list-tags
```

Example:

```bash
playbook: playbooks/main.yml

play #1 (all): Setup workstation      TAGS: []
    TASK TAGS: [akamai, alacritty, always, aws, azure, cli-tools, docker, fonts, gcloud, git, gpg, homebrew-update, iterm2, javascript, kubernetes, nvim, python, rust, ssh, terraform, vim, zsh]
```

#### Install selected components

```bash
poetry run ansible-playbook playbooks/main.yml -t <tag>,<tag>
```

Example:

```bash
poetry run ansible-playbook playbooks/main.yml -t kubernetes,terraform
```

## Development

### Code lint

```bash
poetry run ansible-lint
```
