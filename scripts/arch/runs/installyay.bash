#!/usr/bin/env bash

# Title: Script to install the yay AUR helper
# Author: Nicolás de Rivas Morillo

echo "[INFO] Installing yay AUR helper..."

sudo pacman -Syu --noconfirm                       # Update
sudo pacman -S --noconfirm --needed base-devel git # Dependencies
git clone https://aur.archlinux.org/yay.git        # Clone the repository
# Install yay from the cloned repo
cd yay
makepkg -si --noconfirm
cd ..
rm -rf yay

echo "[INFO] Done!"
