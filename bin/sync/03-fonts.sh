#!/usr/bin/env sh

current_directory=`pwd`

mkdir -p $HOME/.tmp/
cd $HOME/.tmp/
if [ ! -e $HOME/.tmp/nerd-fonts ]; then
   git clone --depth 1 --single-branch http://github.com/ryanoasis/nerd-fonts.git
else
   cd nerd-fonts
   git pull
   cd ..
fi
cd $HOME/.tmp/nerd-fonts/patched-fonts/
mkdir -p $HOME/.local/share/fonts
cp -R FiraCode $HOME/.local/share/fonts/

cd $current_directory

