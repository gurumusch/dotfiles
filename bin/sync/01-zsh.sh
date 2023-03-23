#!/usr/bin/env sh

current_directory=`pwd`

tool_name="zsh"
tool_config_file="zshrc"
dependencies="wget"

# Install the software
echo "Ensure $tool_name is installed"
sudo pacman -S $tool_name --needed --noconfirm 2>&1 | sed "s/^/   /"
echo "Install dependencies of $tool_name"
sudo pacman -S $dependencies --needed --noconfirm 2>&1 | sed "s/^/   /"

sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Create the symbolic link for the vim config
config_in_home=~/.$tool_config_file
config=`pwd`/config/dotfiles/$tool_config_file
echo "Checking $tool_config_file config file (${config_in_home}) ..."
if [ ! -e $config_in_home ]; then
    ln -s $config $config_in_home 2>&1 | sed "s/^/   /"
    echo "created link: ${config_in_home} -> ${config}"
else
    echo "exists"
fi
