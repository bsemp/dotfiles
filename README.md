# workstation-bootstrap

## Prerequisites

### Install brew (macos)

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

### Setup python venv

```bash
# Install poetry
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -

# Install deplendencies
poetry install
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
        TASK TAGS: [azure, cli-tools, fonts, gnu-tools, gpg, homebrew-update, iterm2, javascript, kubernetes, python, screen, ssh, terraform, vim, zsh]

#### Install selected components

```bash
poetry run ansible-playbook playbooks/main.yml -t <tag>,<tag>
```

Example:

`poetry run ansible-playbook playbooks/main.yml -t kubernetes,terraform`

## TODO

- Automatically install python poetry + completion

```bash
ln -s ${HOME}/.config/zsh/completions .zcompletions
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -
poetry completions zsh > ~/.zcompletions/_poetry
```

- Automatically configure iterm2 profile
