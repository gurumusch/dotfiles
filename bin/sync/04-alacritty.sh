#!/usr/bin/env sh

current_directory=`pwd`

tool_name="alacritty"

# Install the software
echo "Ensure $tool_name is installed"
sudo pacman -S $tool_name --needed --noconfirm 2>&1 | sed "s/^/   /"

# Link alacritty config in home
config_in_home=~/config/$tool_name
config=`pwd`/config/$tool_name
echo "Checking $tool_name (${config_in_home}) ..."
if [ ! -e $config_in_home ]; then
    ln -s $config $config_in_home 2>&1 | sed "s/^/   /"
    echo "created link: ${config_in_home} -> ${config}"
else
    echo "exists"
fi

