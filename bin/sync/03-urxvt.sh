#!/usr/bin/env sh

current_directory=`pwd`

tool_name="rxvt-unicode"

# Install the software
echo "Ensure $tool_name is installed"
sudo pacman -S $tool_name --needed --noconfirm 2>&1 | sed "s/^/   /"

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

