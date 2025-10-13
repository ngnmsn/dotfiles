#!/bin/sh

ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
rm -rf ~/.config/fish
ln -sf ~/dotfiles/.config/fish ~/.config/fish