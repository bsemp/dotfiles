# workstation-bootstrap

## Prerequisites

### Setup python venv

```bash
python3 -m venv .venv
source .venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt
```

### Install brew (macos)

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
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

    playbook: playbooks/main.yml

      play #1 (all): Setup workstation	TAGS: []
          TASK TAGS: [cli-tools, gnu-tools, homebrew-update, iterm2, kubernetes, python, screen, ssh, terraform, vim, zsh]

#### Install selected components

```bash
ansible-playbook playbooks/main.yml -t <tag>,<tag>
```

Example:

    ansible-playbook playbooks/main.yml -t kubernetes,terraform

## TODO

- install nerd-font

```bash
brew tap homebrew/cask-fonts
brew install --cask font-fira-code-nerd-font font-jetbrains-mono-nerd-font font-meslo-lg-nerd-font
```

- install python poetry

```bash
ln -s ${HOME}/.config/zsh/completions .zcompletions
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -
poetry completions zsh > ~/.zcompletions/_poetry
```

- configure iterm2 profile

