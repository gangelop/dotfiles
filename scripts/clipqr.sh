#!/bin/sh

IMG_VIEWER="feh -x --title clipqr -"
xclip -o -selection clipboard | qrencode --size=10 -o - | $IMG_VIEWER -
