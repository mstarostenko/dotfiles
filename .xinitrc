#!/bin/sh

# dvorak layout
setxkbmap -layout us,ru -variant 'dvp,' ,winkeys -option grp:shifts_toggle,caps:escape,grp_led:scroll,terminate:ctrl_alt_bksp,compose:ralt

# key delay
xset r rate 200 50

# beeper off
xset b off

# [[ -f ~/.Xresources  ]] && xrdb -merge ~/.Xresources
xrdb $HOME/.Xresources

# 'left shift || right shift' to change layout
sudo shift-shift -quiet >/dev/null &


nitrogen --restore &

exec compton &

exec keynav &

exec i3
