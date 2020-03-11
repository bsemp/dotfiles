# workstation-bootstrap

## Install all

```bash
ansible-playbook playbooks/main.yml
```

## Select components to install

### Get a list of available tags

```bash
ansible-playbook playbooks/main.yml --list-tags
```

Example:

    playbook: playbooks/main.yml

      play #1 (all): Setup workstation	TAGS: []
          TASK TAGS: [cli-tools, gnu-tools, homebrew-update, iterm2, kubernetes, python, screen, ssh, terraform, vim, zsh]

### Install selected components

```bash
ansible-playbook playbooks/main.yml -t <tag>,<tag>
```

Example:

    ansible-playbook playbooks/main.yml -t kubernetes,terraform
