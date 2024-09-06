#!/bin/bash

# Install required tools.
sudo apt update && sudo apt upgrade -y
sudo apt-get install -y $(cat ./scripts/dependencies.txt)

# Set up symlinks.
stow --adopt .

# Install fonts.
fc-cache -fv
