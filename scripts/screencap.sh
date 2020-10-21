#!/bin/bash
# based on a script by unixmaniac
# https://unixmaniac.com/howto-record-4k-gameplay-on-linux/

capturedir="/storage/screencap/"
if [ "$1" = "" ]; then
    sessiondir="${capturedir}/$(date +%s)"
else
    sessiondir="${capturedir}/${1}"
fi
mkdir "$sessiondir" && echo "created ${sessiondir}" || exit 1

tmux new-session -d
tmux set-option remain-on-exit on
tmux split-window "ffmpeg -f pulse -i alsa_output.pci-0000_00_14.2.analog-stereo.monitor -acodec aac -strict experimental ${sessiondir}/out.m4a"
# kmsgrab requires either DRM master or CAP_SYS_ADMIN.
# consider setting "sudo setcap cap_sys_admin+ep /usr/bin/ffmpeg"
# https://ffmpeg.org/ffmpeg-devices.html#kmsgrab
tmux split-window "ffmpeg -f kmsgrab -framerate 60 -i - -vf 'hwmap=derive_device=vaapi,crop=1920:1080:1920:0,scale_vaapi=1920:1080:nv12' -c:v h264_vaapi ${sessiondir}/out.mp4"
tmux a
