#!/usr/bin/env sh

# Install some basic software
echo "Ensure basic software is installed"
sudo pacman -S git base-devel --needed --noconfirm 2>&1 | sed "s/^/   /"
