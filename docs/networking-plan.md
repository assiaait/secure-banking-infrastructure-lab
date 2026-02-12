# Network Addressing & Connectivity Plan 🌐

This document details the IP addressing scheme and network segmentation logic used in the **Secure Banking Lab**.

## 📍 Network Segmentation (Zones)
The architecture is divided into three logical zones to ensure maximum security for the banking data.

| Zone | Network Subnet | Description | Security Level |
| :--- | :--- | :--- | :--- |
| **User Zone** | 10.0.1.0/24 | Client simulation (Internal Banking User) | Medium |
| **Transit Zone** | 10.0.2.0/24 | Managed by pfSense (Firewall) | High |
| **Secure DB Zone** | 10.0.3.0/24 | Isolated RHEL 8.4 Server | Critical |

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
