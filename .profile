#!/bin/sh

#defaults 
export PATH="$PATH:$HOME/.local/bin/"
export EDITOR="nvim"
export VISUAL="nvim"
export TERMINAL="kitty"
export BROWSER="firefox"
export VIDEO="mpv"
export AUDIO="mpv --no-video"

# paths
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}
export XDG_STATE_HOME=${XDG_STATE_HOME:="$HOME/.local/state"}
SVDIR=/var/service


# cleanup
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export INPUTRC="$XDG_CONFIG_HOME"/readline/inputrc
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export TERMINFO="$XDG_DATA_HOME"/terminfo
export TERMINFO_DIRS="$XDG_DATA_HOME"/terminfo:/usr/share/terminfo

# pfetch zox
export PF_INFO="ascii title os wm uptime pkgs palette"
export PF_ASCII="void"
export PF_COL3="4"
export _ZO_ECHO="1"

# java thingy
export _JAVA_AWT_WM_NONREPARENTING=1


[[ -f ~/.bashrc ]] && . ~/.bashrc

