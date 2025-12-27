#!/bin/bash

VPN=$(nmcli -t -f NAME,TYPE connection show --active | grep ':wireguard' | cut -d: -f1)

[ -n "$VPN" ] && nmcli connection down id "$VPN"

