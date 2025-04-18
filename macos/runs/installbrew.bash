#!/usr/bin/env bash

# Title: Script to install the yay AUR helper
# Author: Nicolás de Rivas Morillo

echo "[INFO] Installing brew package manager..."

# Update xcode
xcode-select --install
# Install hombrew
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "[INFO] Done!"
