#!/usr/bin/env sh

# Install some basic software
echo "Ensure basic software is installed"
sudo pacman -S git base-devel cmatrix terminator --needed --noconfirm 2>&1 | sed "s/^/   /"

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

# Link Xresources in home
config_in_home=~/.Xresources
config=`pwd`/config/dotfiles/Xresources
echo "Checking .Xresources (${config_in_home}) ..."
if [ ! -e $config_in_home ]; then
    ln -s $config $config_in_home 2>&1 | sed "s/^/   /"
    echo "created link: ${config_in_home} -> ${config}"
else
    echo "exists"
fi

# Create the symbolic link for the terminator config
tool_name="terminator"
tool_config_folder="terminator"
config_in_home=~/.config/$tool_config_folder
config=`pwd`/config/$tool_config_folder
echo "Checking $tool_config_folder config folder (${config_in_home}) ..."
if [ ! -e $config_in_home ]; then
    ln -s $config $config_in_home 2>&1 | sed "s/^/   /"
    echo "created link: ${config_in_home} -> ${config}"
else
    echo "exists"
fi

