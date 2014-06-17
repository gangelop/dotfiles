#!/bin/sh

IMG_VIEWER=display
xclip -o -selection a | qrencode --size=10 -o - | $IMG_VIEWER -
