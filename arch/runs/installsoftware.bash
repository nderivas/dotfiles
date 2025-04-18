#!/usr/bin/env bash

# Title: Script to install all programs
# Author: Nicolás de Rivas Morillo

echo "[INFO] Installing all programs..."

yay -Syu --noconfirm
# Install pacman packages
pacman -S --noconfirm --needed ghostty eza zoxide fzf git gh bat zsh neovim sudo unzip zip tar
# Install yay packages
yay -S --noconfirm --needed spotify vesktop-bin zen-browser-bin spicetify-cli

echo "[INFO] Done!"
