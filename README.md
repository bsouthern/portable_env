# portable_env
---
## Introduction

This is a repository intended to host portable work environment. A Dockerfile is included to allow for running this environment as a container.

## Local Installation

```
bash .config/install.sh
```

## Docker Installation and Usage

```
docker build . -t portable:latest
```

The following command can be used to start portable_env in your $CWD. All file changes will be persistant on your host machine!

```
docker run -h "portable" --rm -it -v $(pwd):/cwd portable:latest
```
## TODO
- **Aliases**
    - Add help alias to print all commands
- Backup uBlock Origin config.
- This could include a slicker install process and build userspace binaries from source that dont need root permissions.
- This could include a script to automate installation of the bare essential tools like nvim, tmux, fish, curl, webserver
- Add FZF or some automation that automatically cats the README if present.
 - Need a way to collapse things in nvim
 - switch install.sh to use soft links

## IDEAS
 - Wouldn't it be nice to have some sort of TUI file manager/navigator? It could maybe
even only be displayed under some situations...
 - A nice initial prompt would be dope!
