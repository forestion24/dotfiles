#!/bin/bash

ipaddr=$(curl -s ifconfig.me)

ipdata=$(curl -s ip-api.com/json/$ipaddr)

timezone=$(echo "$ipdata" | jq -r ".timezone")
# clinically insane jq-less solution
# timezone=$(echo "$ipdata" | grep -o '"timezone":"[^"]*"' | cut -d':' -f2 | tr -d '"')

if ! timedatectl list-timezones | grep -Fxq "$timezone"; then
  exit 1
fi

timedatectl set-timezone $timezone
