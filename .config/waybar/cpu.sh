#!/bin/bash

# Fetch CPU usage
cpu_usage=$((100 - $(vmstat 1 2 | tail -1 | awk '{print $15}')))

# Fetch CPU temperature
cpu_temp=$(sensors | grep 'Package id 0:' | awk '{print $4}')

# Output the CPU usage with an emoji and temperature in a tooltip
echo "{\"text\":\"$cpu_usage\",\"tooltip\":\"$cpu_temp\"}"
