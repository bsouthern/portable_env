# portable_env
---
## Introduction

This is a repository intended to host portable work environment. A Dockerfile is included to allow for running this environment as a container.

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
- remove/fix emojis in starship
- tmux path seems different than system path...