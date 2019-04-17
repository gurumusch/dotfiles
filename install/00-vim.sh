#!/usr/bin/env sh

echo "Ensure vim is installed"
sudo pacman -S vim --noconfirm

current_directory=`pwd`

# create the symbolic link for the vim config
config_in_home=~/.vimrc
config=`pwd`/.vimrc
echo "Checking vim config file (${config_in_home}) ..."
if [ ! -e $config_in_home ]; then
    ln -s $config $config_in_home
    echo "created link: ${config_in_home} -> ${config}"
else
    echo "exists"
fi

# create the symbolic link for the vim config
config_in_home=~/.vim
config=`pwd`/.vim
echo "Checking vim config folder (${config_in_home}) ..."
if [ ! -e $config_in_home ]; then
    ln -s $config $config_in_home
    echo "created link: ${config_in_home} -> ${config}"
else
    echo "exists"
fi
