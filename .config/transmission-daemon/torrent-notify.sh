#!/bin/sh

export DISPLAY=:0
notify-send -i transmission 'transmission' "downloaded: $TR_TORRENT_NAME"
