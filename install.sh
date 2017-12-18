#!/usr/bin/env sh

current_directory=`pwd`

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

# ensure the .themes folder exists
echo "Checking .themes directory ..."
if [ ! -d ~/.themes ]; then
    mkdir ~/.themes
    echo "created"
else
    echo "exists"
fi

# get the gtk theme
echo "Checking solarized gtk theme (${current_directory}/repos/solarized-dark-gtk) ..."
if [ ! -d ~/repos/solarized-dark-gtk ]; then
    cd ~/repos
    git clone https://github.com/jankotek/solarized-dark-gtk.git
    echo "updating gtk theme"
else
    cd solarized-dark-gtk
    git pull
    echo updating theme
fi

# create the symbolic link for the gtk theme
config_in_home=~/.themes/solarized-dark-gtk
config=~/repos/solarized-dark-gtk
echo "Checking vim config folder (${config_in_home}) ..."
if [ ! -e $config_in_home ]; then
    ln -s $config $config_in_home
    echo "created link: ${config_in_home} -> ${config}"
else
    echo "exists"
fi

# todo: need to ensure oh-my-zsh to be installed

cd $current_directory
