#!/usr/bin/env bash

DOTFILES=$(cd $(dirname  "${BASH_SOURCE[0]}") && pwd)

rm -rf $HOME/.config/kitty
ln -s $DOTFILES/kitty $HOME/.config/kitty

rm -rf $HOME/.tmux.conf
ln -s $DOTFILES/tmux/tmux.conf $HOME/.tmux.conf

mkdir -p $HOME/.local/bin

rm -rf $HOME/.local/bin/t
ln -s $DOTFILES/scripts/t $HOME/.local/bin/t

rm -rf $HOME/.conig/nvim
ln -s $DOTFILES/nvim $HOME/.config/nvim

#rm -rf $HOME/.conig/xorg.conf.d
sudo ln -s $DOTFILES/xorg.conf.d/50-touchpad.conf /etc/X11/xorg.conf.d/50-touchpad.conf

rm -rf $HOME/.config/i3
ln -s $DOTFILES/i3 $HOME/.config/i3

rm -rf $HOME/.config/polybar
ln -s $DOTFILES/polybar $HOME/.config/polybar

rm -rf $HOME/.config/picom
ln -s $DOTFILES/picom $HOME/.config/picom

rm -rf $HOME/.config/rofi
ln -s $DOTFILES/rofi $HOME/.config/rofi

rm -rf $HOME/.local/bin/set-brightness
ln -s $DOTFILES/scripts/set-brightness $HOME/.local/bin/set-brightness
