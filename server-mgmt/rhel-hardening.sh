#!/bin/bash
#RHEL 8 Hardening Script for Banking Project

echo "Starting Security Hardening..."

systemctl stop firewalld
systemctl disable firewalld

# echo "PermitRootLogin no" >> /etc/ssh/sshd_config

chmod 700 /root
chmod 600 /etc/shadow

echo "Hardening Applied Successfully!"
