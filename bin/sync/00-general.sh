#!/usr/bin/env sh

# Install some basic software
echo "Ensure basic software is installed"
sudo pacman -S git base-devel alsa-utils man libfido2 --needed --noconfirm 2>&1 | sed "s/^/   /"

# Link bin folder in home
config_in_home=~/bin
config=`pwd`/bin/home
echo "Checking bin folder (${config_in_home}) ..."
if [ ! -e $config_in_home ]; then
    ln -s $config $config_in_home 2>&1 | sed "s/^/   /"
    echo "created link: ${config_in_home} -> ${config}"
else
    echo "exists"
fi

# Link profile in home
config_in_home=~/.profile
config=`pwd`/config/dotfiles/profile
echo "Checking .profile (${config_in_home}) ..."
if [ ! -e $config_in_home ]; then
    ln -s $config $config_in_home 2>&1 | sed "s/^/   /"
    echo "created link: ${config_in_home} -> ${config}"
else
    echo "exists"
fi

