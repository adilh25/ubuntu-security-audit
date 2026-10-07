#!/bin/bash

echo "=== Ubuntu Security Audit ==="

echo "=== Firewall Status ==="
sudo ufw status

echo "=== Listening TCP Ports ==="
sudo ss -tlnp

echo "=== User Group Memberships ==="
id ubuntu

echo "=== CUPS Service Status ==="
systemctl is-active cups.service

