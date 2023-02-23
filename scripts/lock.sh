#!/bin/bash

# all credit and glory for this awesome script to
# github.com/savoca
# reddit.com/u/wontonspecial
#
# https://github.com/savoca/dotfiles/blob/dark/.bin/scripts/lock.sh
# https://www.reddit.com/r/unixporn/comments/3358vu/i3lock_unixpornworthy_lock_screen/

tmpbg="$(mktemp /tmp/lock.sh-XXXXXXXXXX.png)"
#icon="/home/george/lock_icon.png"
maim $tmpbg
gm convert $tmpbg -scale 10% -scale 1000% -fill black -colorize 25% $tmpbg
#[[ -f $icon ]] && convert $tmpbg $icon -gravity center -composite -matte $tmpbg
#dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Stop

# Pause and unpause dunst. From the manual dunst(1):

# When paused dunst will not display any notifications but keep all notifications
# in a queue.  This can for example be wrapped around a screen locker (i3lock, slock)
# to prevent flickering of notifications through the lock and
# to read all missed notifications after returning to the computer.
killall -SIGUSR1 dunst
i3lock -e -f --nofork -i $tmpbg
killall -SIGUSR2 dunst
rm $tmpbg
