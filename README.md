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

### Setup uv python package manager

```bash
# Install uv
brew install uv
```

### Setup python venv

```bash
# Create a virtual environment
uv venv .venv --prompt "dotfiles"
```

### Install dependencies

```bash
# Activate the virtual environment
source .venv/bin/activate
```

```bash
# Install dependencies
uv sync
```

## Bootstrap

### Install all

```bash
ansible-playbook playbooks/main.yml
```

### Select components to install

#### Get a list of available tags

```bash
ansible-playbook playbooks/main.yml --list-tags
```

Example:

```bash
playbook: playbooks/main.yml

play #1 (all): Setup workstation      TAGS: []
    TASK TAGS: [akamai, alacritty, always, aws, azure, cli-tools, docker, fonts, gcloud, git, gpg, homebrew-update, iterm2, javascript, kubernetes, nvim, python, rust, ssh, terraform, vim, zsh]
```

#### Install selected components

```bash
ansible-playbook playbooks/main.yml -t <tag>,<tag>
```

Example:

```bash
ansible-playbook playbooks/main.yml -t kubernetes,terraform
```

## Development

### Code lint

```bash
ansible-lint
```
