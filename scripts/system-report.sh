#!/bin/bash

echo "========================================="
echo " Enterprise System Report"
echo " Generated: $(date)"
echo "========================================="

echo
echo "===== System Information ====="
echo "Hostname: $(hostname)"
echo "Operating System: $(lsb_release -d 2>/dev/null | cut -f2)"
echo "Kernel: $(uname -r)"
echo "Uptime:"
uptime -p

echo
echo "===== Resource Usage ====="
echo "Memory:"
free -h

echo
echo "Disk:"
df -h /

echo
echo "CPU Load:"
uptime | awk -F'load average:' '{print $2}'

echo
echo "===== Network ====="
hostname -I

echo
echo "Listening Ports:"
ss -tuln

echo
echo "===== Services ====="
printf "%-15s %s\n" "SSH" "$(systemctl is-active ssh)"
printf "%-15s %s\n" "UFW" "$(sudo ufw status | head -n1)"

echo
echo "========================================="
echo " Report completed."
echo "========================================="