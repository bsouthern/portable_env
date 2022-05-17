# portable_env
---
## Introduction

This is a repository intended to host portable work environment. A Dockerfile is included to allow for running this environment as a container.

The install script just makes all required directories and soft links file from this repository into the correct places.

## Assumed $HOME directory structure
 - ~/bin for local executables
 - ~/.config for local config
 - ~/.aliases for local aliases
 - required programs in requirements

## Local Installation

```bash
git clone https://github.com/bsouthern/portable_env
./install.sh
```

## Docker Installation and Usage

**NOT WORKING**

```bash
docker build . -t portable:latest
```

The following command can be used to start portable_env in your $CWD. All file changes will be persistant on your host machine!

```bash
docker run -h "portable" --rm -it -v $(pwd):/cwd portable:latest
```

## TODO
- add help alias to print all commands
- Backup uBlock Origin config.
- This could include a slicker install process and build userspace binaries from source that dont need root permissions.
- This could include a script to automate binary installation like nvim, kitty, bat...
- Add FZF or some automation that automatically cats the README if present.
- Add kitty config

### NVIM
- Need a way to collapse things in nvim
- comment
- smoother terminal
- shortcuts for tabs/windows

## IDEAS
 - Wouldn't it be nice to have some sort of TUI file manager/navigator? It could maybe
even only be displayed under some situations...
