#!/bin/bash

# Copies fish config from portable_env git repo into home config.
mkdir -p ~/.config/fish
cp .config/config.fish ~/.config/fish/

# NVIM
mkdir -p ~/.config/nvim
cp -R .config/nvim/ ~/.config/nvim

# Aliases
cp .aliases ~/
