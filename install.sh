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
config_in_home=~/.config/i3
config=`pwd`/.config/i3
echo "Checking i3 config directory (${config_in_home}) ..."
if [ ! -L $config_in_home ] && [ ! -d $config_in_home ]; then
    ln -s $config $config_in_home
    echo "created link: ${config_in_home} -> ${config}"
else
    echo "exists"
fi

# create the symbolic link for the rofi config
config_in_home=~/.config/rofi
config=`pwd`/.config/rofi
echo "Checking rofi config directory (${config_in_home}) ..."
if [ ! -L $config_in_home ] && [ ! -d $config_in_home ]; then
    ln -s $config $config_in_home
    echo "created link: ${config_in_home} -> ${config}"
else
    echo "exists"
fi

# create the symbolic link for the polybar config
config_in_home=~/.config/polybar
config=`pwd`/.config/polybar
echo "Checking polybar config directory (${config_in_home}) ..."
if [ ! -L $config_in_home ] && [ ! -d $config_in_home ]; then
    ln -s $config $config_in_home
    echo "created link: ${config_in_home} -> ${config}"
else
    echo "exists"
fi

# create the symbolic link for the terminator config
config_in_home=~/.config/terminator
config=`pwd`/.config/terminator
echo "Checking terminator config directory (${config_in_home}) ..."
if [ ! -L $config_in_home ] && [ ! -d $config_in_home ]; then
    ln -s $config $config_in_home
    echo "created link: ${config_in_home} -> ${config}"
else
    echo "exists"
fi

# create the symbolic link for the compton config
config_in_home=~/.config/compton.conf
config=`pwd`/.config/compton.conf
echo "Checking compton config file (${config_in_home}) ..."
if [ ! -L $config_in_home ] && [ ! -d $config_in_home ]; then
    ln -s $config $config_in_home
    echo "created link: ${config_in_home} -> ${config}"
else
    echo "exists"
fi

# create the symbolic link for the vim config
config_in_home=~/.Xresources
config=`pwd`/.Xresources
echo "Checking x resources config file (${config_in_home}) ..."
if [ ! -e $config_in_home ]; then
    ln -s $config $config_in_home
    echo "created link: ${config_in_home} -> ${config}"
else
    echo "exists"
fi

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

# ensure the bin folder exists
echo "Checking bin directory ..."
if [ ! -d ~/bin ]; then
    mkdir ~/bin
    echo "created"
else
    echo "exists"
fi

# create the symbolic link for the lock script
script_in_home=~/bin/lock.sh
script=`pwd`/bin/lock.sh
echo "Checking lock script (${script_in_home}) ..."
if [ ! -L $script_in_home ] && [ ! -f $script_in_home ]; then
    ln -s $script $script_in_home
    echo "created link: ${script_in_home} -> ${script}"
else
    echo "exists"
fi

# create the symbolic link for the polybar script
script_in_home=~/bin/polybar.sh
script=`pwd`/bin/polybar.sh
echo "Checking polybar script (${script_in_home}) ..."
if [ ! -L $script_in_home ] && [ ! -f $script_in_home ]; then
    ln -s $script $script_in_home
    echo "created link: ${script_in_home} -> ${script}"
else
    echo "exists"
fi

