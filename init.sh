#!/bin/sh

ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
rm -rf ~/.config/fish
ln -sf ~/dotfiles/.config/fish ~/.config/fish
rm -rf ~/.config/nvim
ln -sf ~/dotfiles/.config/nvim ~/.config/nvim
rm -rf ~/.config/ghostty
ln -sf ~/dotfiles/.config/ghostty ~/.config/ghostty
mkdir -p ~/.config/herdr
ln -sf ~/dotfiles/.config/herdr/config.toml ~/.config/herdr/config.toml