#!/bin/bash
full=$(cat /sys/class/power_supply/BAT0/energy_full_design)

while true; do
  current=$(cat /sys/class/power_supply/BAT0/energy_now)
  status=$(cat /sys/class/power_supply/BAT0/status)
  percentage=$((current * 100 / full))
  if [[ "$percentage" -ge 80 && "$status" == "Charging" ]]; then
    twmnc -t Battery notification -c "Its recommended to disconect charger when 80% of battery is reached"
  elif [[ "$percentage" -lt 40 && "$status" == "Discharging" ]]; then
    twmnc -t Battery notification -c "It's recommended to charge your battery when charge is 40% or less"
  fi
  sleep 1m
done
