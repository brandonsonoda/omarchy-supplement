#!/bin/bash

# Install all packages in order
./install-zsh.sh
./install-tmux.sh
./install-stow.sh
./install-dotfiles.sh
./install-hyprland-overrides.sh
./install-hy3.sh
./remove-unused-apps.sh

# ./set-shell.sh
