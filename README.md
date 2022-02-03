# workstation-bootstrap

[![Test](https://github.com/bsemp/workstation-bootstrap/actions/workflows/test.yaml/badge.svg)](https://github.com/bsemp/workstation-bootstrap/actions/workflows/test.yaml)

## Prerequisites

### Install brew (macos)

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

### Setup python venv

```bash
# Install poetry
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -

# Install dependencies
poetry install
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

    playbook: playbooks/main.yml

    play #1 (all): Setup workstation      TAGS: []
        TASK TAGS: [azure, cli-tools, fonts, git, gnu-tools, gpg, homebrew-update, iterm2, javascript, kubernetes, python, screen, ssh, terraform, vim, zsh]

#### Install selected components

```bash
poetry run ansible-playbook playbooks/main.yml -t <tag>,<tag>
```

Example:

`poetry run ansible-playbook playbooks/main.yml -t kubernetes,terraform`

## TODO

- Automatic prerequisites installation (use makefile ?)
  - Automatically install brew
  - Automatically install python poetry with completion

    ```bash
    ln -s ${XDG_CONFIG_HOME:-${HOME}/.config}/zsh/completions .zcompletions
    curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -
    poetry completions zsh > ~/.zcompletions/_poetry
    ```

- Global playbook configuration file instead of per roles
- Better usage of XDG_CONFIG_HOME instead of hardcoded "~/.config" directory
- IDE configuration (vscode, vim)
- iterm2 profile configuration
- MacOS configuration (ex: FileVault, ...)
