#!/bin/bash

# porch_img_check.sh
# Check if any JPG-files exist under specific directory
# If found, publish MQTT on/off
# Thomas Vadahl, 20170615


USER=*secret*
PASS=*secret*
TOPIC="homeassistant/porch/motion_sensor"


while :
do
    sleep 1
    DIR="/home/camera/porch"
    if test "$(ls -A "$DIR")"; then
        # Send MQTT message on
        mosquitto_pub -P "$USER" -u "$PASS" -t "$TOPIC" -m "on"
        # Delete files and wait 10 seconds
        rm $DIR/*.jpg
        sleep 10
        # Send MQTT message off
        mosquitto_pub -P "$USER" -u "$PASS" -t "$TOPIC" -m "off"
    fi
done



