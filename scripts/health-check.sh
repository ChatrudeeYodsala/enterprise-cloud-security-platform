#!/bin/bash

echo "========================================="
echo " Enterprise Infrastructure Health Check"
echo "========================================="

echo
echo "[Hostname]"
hostname

echo
echo "[Operating System]"
lsb_release -d 2>/dev/null | cut -f2

echo
echo "[Kernel]"
uname -r

echo
echo "[Uptime]"
uptime

echo
echo "[CPU Load]"
uptime | awk -F'load average:' '{print $2}'

echo
echo "[Memory Usage]"
free -h

echo
echo "[Disk Usage]"
df -h /

echo
echo "[UFW Firewall]"
sudo ufw status

echo
echo "[SSH Service]"
systemctl is-active ssh

echo
echo "[System Time]"
date

echo
echo "Health check completed."