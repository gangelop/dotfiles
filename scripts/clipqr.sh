#!/bin/sh

IMG_VIEWER=display
xclip -o -selection clipboard | qrencode --size=10 -o - | $IMG_VIEWER -
