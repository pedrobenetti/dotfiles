#!/bin/bash

#########
# nvim  #
#########

mkdir -p "$XDG_CONFIG_HOME/nvim"
mkdir -p "$XDG_CONFIG_HOME/nvim/undo"
ln -sf "$DOTFILES/nvim/init.vim" "$XDG_CONFIG_HOME/nvim" 

#############
# Alacritty #
#############

mkdir -p "$XDG_CONFIG_HOME/alacritty"
ln -sf "$DOTFILES/alacritty/alacritty.yml" "$XDG_CONFIG_HOME/alacritty"

#######
# X11 #
#######

rm -rf "$XDG_CONFIG_HOME/X11"
ln -s "$DOTFILES/X11" "$XDG_CONFIG_HOME"

######
# i3 #
######

rm -rf "$XDG_CONFIG_HOME/i3"
ln -s "$DOTFILES/i3" "$XDG_CONFIG_HOME"


########
# zsh  #
########

mkdir -p "$XDG_CONFIG_HOME/zsh"
ln -sf "$DOTFILES/zsh/.zshenv" "$HOME"
ln -sf "$DOTFILES/zsh/.zshrc" "$XDG_CONFIG_HOME/zsh"

ln -sf "$DOTFILES/zsh/aliases" "$XDG_CONFIG_HOME/zsh/aliases"

rm -rf "$XDG_CONFIG_HOME/zsh/external"
ln -sf "$DOTFILES/zsh/external" "$XDG_CONFIG_HOME/zsh"

#########
# Fonts #
#########

mkdir -p "$XDG_DATA_HOME"
cp -rf "$DOTFILES/fonts" "$XDG_DATA_HOME"

mkdir -p "$XDG_CONFIG_HOME/dunst"
ln -sf "$DOTFILES/dunst/dunstrc" "$XDG_CONFIG_HOME/dunst/dunstrc"

###########
# Polybar #
###########

mkdir -p "$XDG_CONFIG_HOME/polybar"
ln -sf "$DOTFILES/polybar/config.ini" "$XDG_CONFIG_HOME/polybar"
ln -sf "$DOTFILES/polybar/launch.sh" "$XDG_CONFIG_HOME/polybar"

#########
# Picom #
#########

mkdir -p "$XDG_CONFIG_HOME/picom"
ln -sf "$DOTFILES/picom/picom.conf" "$XDG_CONFIG_HOME/picom"
