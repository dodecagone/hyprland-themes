#!/bin/sh

while true; do
    battery1=$(upower -i "$(upower -e | grep BAT1)" | grep -E "percentage" | awk '{print $2}' | tr -d '%')
    battery0=$(upower -i "$(upower -e | grep BAT0)" | grep -E "percentage" | awk '{print $2}' | tr -d '%')
    battery=$(((battery1+$battery0) / 2))
    state=$(upower -d | grep -E state | awk -v delay=0 '{print $2}' | tail -n 1)
    if [[ "$battery" -le "20" && "$state" == "discharging" ]]; then
        notify-send -i battery-low-symbolic "Low Battery :("
        sleep 300
    else
        sleep 600
    fi
done
