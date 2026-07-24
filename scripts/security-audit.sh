#!/bin/bash

echo "========================================="
echo " Enterprise Linux Security Audit"
echo "========================================="

echo
echo "[1] UFW Firewall"
sudo ufw status

echo
echo "[2] SSH Service"
systemctl is-active ssh

echo
echo "[3] Root Login Configuration"
grep "^PermitRootLogin" /etc/ssh/sshd_config

echo
echo "[4] Password Authentication"
grep "^PasswordAuthentication" /etc/ssh/sshd_config

echo
echo "[5] Listening Ports"
ss -tuln

echo
echo "[6] Failed Login Attempts"
sudo lastb 2>/dev/null | head

echo
echo "[7] Sudo Users"
getent group sudo

echo
echo "========================================="
echo " Security audit completed."
echo "========================================="