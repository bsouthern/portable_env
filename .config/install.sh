#!/bin/bash

# Copies fish config from portable_env git repo into home config.
mkdir -p ~/.config/fish
cp ./config.fish ~/.config/fish/

# NVIM
cp -R ./nvim/ ~/.config/

# Aliases
cp ../.aliases ~/
