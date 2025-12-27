#!/bin/bash

VPN=$(nmcli -t -f NAME,TYPE connection show --active | grep ':wireguard' | cut -d: -f1)

if [ -z "$VPN" ]; then
  echo '{"text":"","class":"off"}'
  exit 0
fi

echo "{\"text\":\"󰖂\",\"tooltip\":\"$VPN\",\"class\":\"on\"}"
