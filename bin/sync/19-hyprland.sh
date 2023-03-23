#!/usr/bin/env sh

current_directory=`pwd`

tool_name="hyprland"
tool_config_folder="hypr"
dependencies="brightnessctl"

# Install the software
echo "Ensure $tool_name is installed"
yay -S $tool_name --needed --noconfirm 2>&1 | sed "s/^/   /"
echo "Install dependencies of $tool_name"
sudo pacman -S $dependencies --needed --noconfirm 2>&1 | sed "s/^/   /"

# Create the symbolic link for the vim config
config_in_home=~/.config/$tool_config_folder
config=`pwd`/config/$tool_config_folder
echo "Checking $tool_config_folder config folder (${config_in_home}) ..."
if [ ! -e $config_in_home ]; then
    ln -s $config $config_in_home 2>&1 | sed "s/^/   /"
    echo "created link: ${config_in_home} -> ${config}"
else
    echo "exists"
fi

