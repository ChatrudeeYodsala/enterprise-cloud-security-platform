#!/bin/bash

echo "========================================="
echo " Enterprise Service Status"
echo "========================================="

SERVICES=(
    ssh
    amazon-ssm-agent
    systemd-journald
)

echo

for SERVICE in "${SERVICES[@]}"
do
    STATUS=$(systemctl is-active "$SERVICE" 2>/dev/null)

    if [ "$STATUS" = "active" ]; then
        printf "%-25s : ACTIVE\n" "$SERVICE"
    else
        printf "%-25s : INACTIVE\n" "$SERVICE"
    fi
done

echo
echo "========================================="
echo " Service status check completed."
echo "========================================="