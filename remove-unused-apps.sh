#!/bin/bash

# Remove unused packages
remove_if_present() {
  pacman -Q "$1" &> /dev/null && sudo pacman -Rns --noconfirm "$1";
}

echo "Removing pkgs..."
remove_if_present 1password-beta
remove_if_present 1password-cli
remove_if_present docker
remove_if_present docker-buildx 
remove_if_present docker-compose
remove_if_present obsidian
remove_if_present opencode

# Remove unused webapps
echo "Removing webapps..."
omarchy-webapp-remove "Basecamp"
omarchy-webapp-remove "ChatGPT"
omarchy-webapp-remove "Discord"
omarchy-webapp-remove "Figma"
omarchy-webapp-remove "Fizzy"
omarchy-webapp-remove "Google Contacts"
omarchy-webapp-remove "Google Maps"
omarchy-webapp-remove "Google Messages"
omarchy-webapp-remove "Google Contacts"
omarchy-webapp-remove "HEY"
omarchy-webapp-remove "WhatsApp"
omarchy-webapp-remove "X"

# Remove unused TUIs
echo "Removing TUIs..."
omarchy-tui-remove "Docker"
