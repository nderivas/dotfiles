#!/usr/bin/env bash

# Title: Script to install all programs
# Author: Nicolás de Rivas Morillo

echo "[INFO] Installing all programs..."

# Install homebrew packages
brew install eza zoxide git bat fzf git gh neovim
# Install homebrew casks
brew install --cask zen-browser ghostty discord spotify raycast

echo "[INFO] Done!"
