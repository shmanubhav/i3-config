#!/bin/bash

sink=$(pactl list sinks | grep -B 2 'Name: bluez_sink.*.a2dp_sink' | head -n 1 | awk '{print $2}')
sink_no=${sink:1}
sed -i "s/set-sink-volume \(.\)/set-sink-volume ${sink_no}/g" $HOME/.config/i3/config
sed -i "s/set-sink-mute \(.\)/set-sink-mute ${sink_no}/g" $HOME/.config/i3/config

