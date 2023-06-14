# Dotfiles

## Prerequisites

### Install brew (macos)

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Setup python venv

```bash
# Install poetry
curl -sSL https://install.python-poetry.org | python3 -

# Install dependencies
poetry install
```

Note: if after upgrading your pythoon version, you are facing an issue like `dyld[25492]: Library not loaded: '/usr/local/Cellar/python...` when running poetry, try the following:

```bash
# Reinstall poetry
curl -sSL https://install.python-poetry.org | python3 - --uninstall
curl -sSL https://install.python-poetry.org | python3 -
```

#### Update poetry and dependencies

```bash
poetry self update
poetry update
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
    TASK TAGS: [akamai, alacritty, always, aws, azure, cli-tools, docker, fonts, gcloud, git, gpg, homebrew-update, iterm2, javascript, kubernetes, nvim, python, ssh, terraform, vim, zsh]
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
