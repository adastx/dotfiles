#!/bin/bash
max_volume_pc=$1
current_volume_pc=$(pactl list sinks | grep '^[[:space:]]Volume:' | head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,')
if (($current_volume_pc < $max_volume_pc-5)) ; then
    pactl set-sink-volume @DEFAULT_SINK@ +5% && $refresh_i3status
else
    a=$(($max_volume_pc - $current_volume_pc))
    pactl set-sink-volume @DEFAULT_SINK@ +$a% && $refresh_i3status
fi

