#!/usr/bin/bash
TEMP=/tmp/current_wall

files=(~/.config/hypr/wallpapers/*.jpg)

hypr=~/.config/hypr
scripts=$hypr/scripts

if [ -f $TEMP ]; then
   index=$(cat $TEMP)
   index=$((index+1))
else
   index=0
fi

if [ $index -ge ${#files[@]} ]; then
    index=0
fi

echo $index > $TEMP
swww img "${files[$index]}"\
   --transition-type center\
   --transition-duration 3
exit 0
