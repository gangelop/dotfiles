#!/bin/sh

viewer="feh -x --title clipqr -"
xclip -o -selection clipboard | qrencode --size=10 -o - | $viewer -
