# Network Addressing & Connectivity Plan (Updated) 🌐

This document outlines the infrastructure layout and connectivity logic for the Secure Banking Lab as implemented in EVE-NG.

# 📍 Network Topology Overview
The network utilizes a pfSense Firewall as the gateway to the external network (Net), connected via a central Switch to isolate internal assets.

# 📟 Device IP & Interface Mapping

Device,Interface,Connection Point,IP Address (Proposed),Role
pfSense Firewall,e0,External (Net),DHCP,Perimeter Security
pfSense Firewall,e1,Switch Gi0/0,10.0.1.1/24,Default Gateway
Internal-Banking-User,eth0,Switch Gi0/2,10.0.1.20/24,Client Terminal
RHEL_9_Server,e0,Switch Gi0/1,10.0.1.10/24,Oracle DB Host

## 📟 Device IP Assignments
| Device | Interface | IP Address | Gateway | Role |
| :--- | :--- | :--- | :--- | :--- |
| **pfSense** | WAN (External) | DHCP/Cloud | - | Edge Security |
| **pfSense** | LAN (DB Zone) | 10.0.3.1 | - | Gateway for DB |
| **RHEL 8 Server** | eth0 | 10.0.3.10 | 10.0.3.1 | Database Host |
| **Oracle DB** | Local | 127.0.0.1 | - | Database Service |

## 🛰️ Connectivity Testing (Proof of Concept)
The following tests were performed to verify the network plan:
1. **ICMP Check:** Successful ping from User to pfSense.
2. **Service Check:** Telnet from User to RHEL Server on **Port 1521** (Permitted by Firewall).
3. **Isolation Check:** Direct SSH access from User to DB Zone is blocked (Enforced by pfSense).
