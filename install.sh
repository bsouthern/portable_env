#!/bin/bash
# TODO: Add bash script argument checks/prompts
# TODO: check for presence off binaryies
# TODO: set proper shell via chsh
# TODO: setup vs sync (can sync just be done with git?
# TODO: Actual fresh install script...like even for fresh VMs...

# Set $PENV to cwd and ensure proper directory structure
PENV=`pwd`
#mkdir -p ~/.config/alacritty 
#mkdir -p ~/.config/kitty
#mkdir -p ~/.config/nvim
#mkdir -p ~/.config/helix
#mkdir -p ~/.config/fish
#mkdir -p ~/.config/sway
#mkdir -p ~/.config waybar

# cd to $HOME and soft link everything
cd ~

# Terminals
#ln -si $PENV/config/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml 
# ln -si $PENV/config/kitty/kitty.conf ~/.config/kitty/kitty.conf

# Editors
#ln -si $PENV/config/nvim ~/.config/nvim
ln -si $PENV/config/helix ~/.config/
# ln -si $PENV/config/kak ~/.config/kak

# Shells
#ln -si $PENV/config/config.fish ~/.config/fish
#ln -si $PENV/config/.zshrc
#ln -si $PENV/.aliases ~/.aliases

# Misc.
# ln -si $PENV/config/.amethyst.yml ~/.amethyst.yml
#ln -si $PENV/.tmux.conf ~/.tmux.conf
#ln -si $PENV/config/sway ~/.config/sway
#ln -si $PENV/config/waybar ~/.config/waybar

# bash_functions
#ln -si $PENV/bash_functions/* ~/bin/
