#!/bin/bash

echo "Stopping AP in a screen"

# let the setup_ap.sh script continue
sudo pkill hostapd 2>/dev/null

# just to be sure
sudo iptables -F
sudo iptables -F -t nat

sleep 1

sudo screen -S smarthack-wifi         -X stuff '^C'
sudo screen -S smarthack-web          -X stuff '^C'
sudo screen -S smarthack-smartconfig  -X stuff '^C'
sudo screen -S smarthack-mqtt         -X stuff '^C'
