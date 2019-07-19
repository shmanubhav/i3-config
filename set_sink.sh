#!/bin/bash

sink_number=$( pactl list sinks | grep -i -B 2 'Name: bluez_sink' | head -n 1 | awk '{ print $2 }' | tail -c 2 )
echo $sink_number
sed -i "s/volume ./volume $sink_number/g" ~/.config/i3/config
