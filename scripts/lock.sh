#!/bin/bash

# all credit and glory for this awesome script to
# github.com/savoca
# reddit.com/u/wontonspecial
#
# https://github.com/savoca/dotfiles/blob/dark/.bin/scripts/lock.sh
# https://www.reddit.com/r/unixporn/comments/3358vu/i3lock_unixpornworthy_lock_screen/

tmpbg="/tmp/screen.png"
#icon="/home/george/lock_icon.png"
scrot $tmpbg
convert $tmpbg -scale 5% -scale 2005% -fill black -colorize 25% $tmpbg
#[[ -f $icon ]] && convert $tmpbg $icon -gravity center -composite -matte $tmpbg
#dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Stop
killall -SIGUSR1 dunst; i3lock -u --nofork -i $tmpbg && killall -SIGUSR2 dunst
