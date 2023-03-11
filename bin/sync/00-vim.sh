#!/usr/bin/env sh

tool_name="neovim"
tool_config_folder="nvim"
dependencies="aspell aspell-de aspell-en"

# Install the software
echo "Ensure $tool_name is installed"
sudo pacman -S $tool_name --needed --noconfirm
echo "Install dependencies of $tool_name"
sudo pacman -S $dependencies --needed --noconfirm

current_directory=`pwd`

# Create the symbolic link for the vim config
config_in_home=~/.config/$tool_config_folder
config=`pwd`/config/$tool_config_folder
echo "Checking $tool_config_folder config folder (${config_in_home}) ..."
if [ ! -e $config_in_home ]; then
    ln -s $config $config_in_home
    echo "created link: ${config_in_home} -> ${config}"
else
    echo "exists"
fi