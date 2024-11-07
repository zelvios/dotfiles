#!/bin/bash

# Add repository for `fastfetch`.
sudo add-apt-repository ppa:zhangsongcui3371/fastfetch

# Install required tools.
sudo apt update && sudo apt upgrade -y
sudo apt-get install -y $(cat ./scripts/dependencies.txt)

# Install fonts.
wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip \
&& cd ~/.local/share/fonts \
&& unzip -o JetBrainsMono.zip \
&& rm JetBrainsMono.zip \
&& fc-cache -fv

# Set up symlinks.
stow --adopt .

