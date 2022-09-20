urxvtd -o -q -f
setxkbmap -model abnt2 -layout br -variant abnt2
xrdb -merge ~/.config/X11/.Xresources
exec i3


