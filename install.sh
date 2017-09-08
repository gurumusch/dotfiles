#!/usr/bin/env sh

# ensure the .config folder exists
echo "Checking .config directory ..."
if [ ! -d ~/.config ]; then
    mkdir ~/.config
    echo "created"
else
    echo "exists"
fi

# create the symbolic link for the i3 config
echo "Checking i3 config directory ..."
i3_config_directory=`pwd`/.config/i3
if [ ! -d $i3_config_directory ]; then
    ln -s $i3_config_directory ~/.config/i3
    echo "created"
else
    echo "exists"
fi
