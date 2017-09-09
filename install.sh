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
if [ ! -L $i3_config_directory ] && [ ! -d $i3_config_directory ]; then
    ln -s $i3_config_directory ~/.config/i3
    echo "created"
else
    echo "exists"
fi

# create the symbolic link for the terminator config
echo "Checking terminator config directory ..."
terminator_config_directory=`pwd`/.config/terminator
if [ ! -L $terminator_config_directory ] && [ ! -d $terminator_config_directory ]; then
    ln -s $terminator_config_directory ~/.config/terminator
    echo "created"
else
    echo "exists"
fi

# create the symbolic link for the compton config
echo "Checking compton config file ..."
compton_config_file=`pwd`/.config/compton.conf
if [ ! -L $compton_config_file ] && [ ! -f $compton_config_file]; then
    ln -s $compton_config_file ~/.config/compton.conf
    echo "created"
else
    echo "exists"
fi
