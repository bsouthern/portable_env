#!/bin/bash
# TODO: Add bash script argument checks/prompts

#Set $PENV to cwd and ensure proper directory structure
PENV=`pwd`
mkdir -p ~/.config/fish
mkdir -p ~/.config/nvim
mkdir -p ~/.config/alacritty 

# cd to $HOME and soft link everything
cd ~
ln -si $PENV/config/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml 
ln -si $PENV/config/config.fish ~/.config/fish
ln -si $PENV/config/nvim ~/.config/nvim
ln -si $PENV/config/.zshrc
ln -si $PENV/.aliases ~/.aliases
ln -si $PENV/.tmux.conf ~/.tmux.conf
