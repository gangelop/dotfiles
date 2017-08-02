#!/bin/sh

set -o nounset

transmission-remote --add "$1" && \
    notify-send -i transmission 'torrent added' || \
    notify-send -i transmission -u critical 'Failed to add torrent!' 'Is transmission running?'
