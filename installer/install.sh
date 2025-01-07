#!/bin/bash

# Install required tools.
sudo pacman -Syy
sudo pacman -S --noconfirm $(cat ./installer/dependencies.txt)

# Set up symlinks.
stow --adopt .
