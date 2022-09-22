udiskie&
setxkbmap -option 'caps:ctrl_modifier';xcape -e 'Caps_Lock=Escape'&

urxvtd -o -q -f
setxkbmap -model abnt2 -layout br -variant abnt2
xrdb -merge ~/.config/X11/.Xresources
exec i3


