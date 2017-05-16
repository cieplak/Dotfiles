
xmodmap -e 'remove Lock = Caps_Lock'

xmodmap -e 'keysym Caps_Lock = Control_L'
xmodmap -e 'add Control = Control_L'

#xmodmap -e 'keysym Alt_L = Meta_L'
#xmodmap -e 'add Meta = Meta_L'

xbindkeys

userresources=$HOME/.Xresources

xrdb -merge "$userresources"

exec wmii
