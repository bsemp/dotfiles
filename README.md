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
    TASK TAGS: [akamai, alacritty, always, aws, azure, cli-tools, docker, fonts, gcloud, ghostty, git, gpg, homebrew-update, iterm2, javascript, kubernetes, nvim, python, rust, ssh, terraform, vim, zsh]
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

### Upgrade application dependencies

```bash
# Show outdated dependencies
uv tree --depth 1 --outdated
uv add "<package>==<new_version>"
uv sync --upgrade
```

Example:

```bash
❯ uv tree --depth 1 --outdated
Resolved 31 packages in 5ms
dotfiles v1.0.0
├── ansible v13.2.0 (latest: v13.6.0)
└── ansible-lint v26.4.0 (group: dev)

❯ uv add "ansible==13.6.0"
Resolved 31 packages in 11ms
Uninstalled 1 package in 1.56s
Installed 1 package in 364ms
 - ansible==13.2.0
 + ansible==13.6.0

❯ uv sync --upgrade
Resolved 31 packages in 113ms
Checked 30 packages in 4ms
```

## CI

### Upgrade dependencies in CI/CD workflows

We use `ratchet` to pin upstream versions using commit shas instead of tags or branches to improve security and stability of CI/CD workflows.

See [ratchet documentation](https://github.com/sethvargo/ratchet) for more information.

#### Pinning dependencies in CI/CD workflows

1. Run the `ratchet pin` command to pin upstream versions using commit shas.
    1. Special annotation can be used to skip pinning a dependency: `# ratchet:exclude`
2. Review the changes and commit them to the repository.

```bash
ratchet pin -parser actions .github/**/*.{yml,yaml}
```

#### Upgrading dependencies in CI/CD workflows

1. Run the `ratchet upgrade` command to upgrade upstream versions using commit shas.
2. Review the changes and commit them to the repository.

```bash
ratchet upgrade -parser actions .github/**/*.{yml,yaml}
```
