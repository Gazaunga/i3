#!/bin/sh

while xsetroot -name "`date` `uptime | sed 's/.*,//'`"
    do
    	sleep 1
    done &
exec i3
    
sh ~/.fehbg &

# These should be the only commands needed
xmodmap -e 'clear Lock' #ensures you're not stuck in CAPS on mode
xmodmap -e 'keycode 0x42=Escape' #remaps the keyboard so CAPS LOCK=ESC

#export TERMINAL="$HOME/bin/st-0.7/st"

userresources=$HOME/.Xdefaults
#usermodmap=$HOME/.Xmodmap
#sysmodmap=/etc/X11/xinit/.Xmodmap

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
    xset r 66
fi
if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

#Set the background color

#hsetroot -solid "#fdf6e3"		#light
#hsetroot -solid "#073642"		#dark
#hsetroot -solid "#3c3836"

# merge in defaults and keymaps

if [ -f $sysresources ]; then

    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then

    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi


#exec $desktopenvironment
