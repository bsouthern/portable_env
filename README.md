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
- reduce build time...
- tmux path seems different than system path...
- **Aliases**
    - Add help alias to print all commands
- Maybe just have install script to append source $whatever into .zshrc, .bashrc, whatever
- Backup uBlock Origin config.
