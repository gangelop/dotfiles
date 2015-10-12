#!/bin/sh

export DISPLAY=:0
notify-send 'transmission' "downloaded: $TR_TORRENT_NAME"
