#!/bin/bash

echo "Starting server check script..."

echo
echo "[Current User]"
whoami
echo
echo "[Hostname]"
hostname
echo
echo "[IP Address]"
hostname -I | awk '{print $1}'
echo
echo "[SSH Status]"
systemctl is-active ssh
echo
echo "[Port 22]"
ss -tln | grep ':22 '