#!/bin/bash

# autostartx if running on the first tty:
[[ -z $DISPLAY && $XDG_VTNR -eq 1 && -z $TMUX ]] && exec startx

PATH=$PATH:$HOME/.local

# Environment

#export EDITOR='emacs'
#export GIT_EDITOR='/usr/bin/emacs'
#export BROWSER=qutebrowser
export TERMINAL=urxvt
export FILEBROWSER=nautilus

# if shell is zsh source ~/zsh/minimal.zsh


