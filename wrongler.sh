#!/bin/bash

# deletes the files in /var/lib/bluetooth and restarts the service

echo "Wrongler: Bluetooth Dongle Wrangler for Linux"
echo "*********************************************"
echo "Stopping Bluetooth service..."
systemctl stop bluetooth
echo "done"
echo "Removing Bluetooth files..."
rm -rf /var/lib/bluetooth/*
rmmod btusb
echo "done"
sleep 1
echo "Reinitializing Bluetooth service..."
modprobe btusb
systemctl start bluetooth
echo "done"
