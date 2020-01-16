# ZSH configuration documentation

## Config files location

By default, all config files are located in `${HOME}`.

To keep home directory clean all simplify configuration and backup, the variable `ZDOTDIR` is overriden in `.zshenv` to point to `${HOME}/.config/zsh` and all config files are created in this repository.
Similarly `ADOTDIR` (antigen) is overriden to point to `${ZDOTDIR}/antigen`

In order for *ZSH* to be able to use this new location (without modifying system wide config in /etc/profile), a symlink should be created from `${HOME}/.zshenv` to `${HOME}/.config/zsh/.zshenv`

## Config files edition

Aliases are created to easily modify the config files in the new location `zsh(env|profile|rc|login|logout)config`.

Example: `alias zshenv="vim ${ZDOTDIR}/.zshenv"`

## Config file priority and loading

1. .zshenv -> Read every time
2. .zprofile -> Read at login
3. .zshrc  -> Read when interactive
4. .zlogin -> Read at login
5. .zlogout -> Read at logout, within login shell

## How I choose where to put a setting

- if it is needed by a command run non-interactively: `.zshenv`
- if it should be updated on each new shell: `.zshenv`
- if it runs a command which may take some time to complete: `.zprofile`
- if it is related to interactive usage: `.zshrc`
- if it is a command to be run when the shell is fully setup: `.zlogin`
- if it releases a resource acquired at login: `.zlogout`

## User defined zsh extensions and configurations

To prevent an overly complicated `.zshrc`, custom extensions and configuration can be created in dedicated files.

You can create any number of file for custom extensions and configuration in folders `${ZDOTDIR}/functions` and `${ZDOTDIR}/custom`, `.zshrc` will source all files ending with `.zsh` contained in these folders.

Example:
`${ZDOTDIR}/functions/weather.zsh`
`${ZDOTDIR}/custom/aliases.zsh`
