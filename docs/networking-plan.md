# Network Addressing & Connectivity Plan (Updated) 🌐

This document outlines the infrastructure layout and connectivity logic for the Secure Banking Lab as implemented in EVE-NG.

# 📍 Network Topology Overview
The network utilizes a pfSense Firewall as the gateway to the external network (Net), connected via a central Switch to isolate internal assets.

# 📟 Device IP & Interface Mapping

| Device | Interface | IP Address | Gateway | Role |
| :--- | :--- | :--- | :--- | :--- |
| **pfSense (WAN)** | vtnet0 | 192.168.81.240/24 | - | External Gateway |
| **pfSense (LAN)** | vtnet1 | 192.168.1.1/24 | - | Internal Gateway |
| **RHEL 9 Server** | ens3 | 192.168.1.10/24 | 192.168.1.1 | Oracle DB Host |
| **Internal-User** | VPCS | 192.168.1.20/24 | 192.168.1.1 | Client Terminal |

## 🛰️ Connectivity Flow & Proof of Concept
The following data flow logic is enforced by the pfSense and Switch configuration:
1. **Direct Communication:** The Internal-Banking-User can communicate with the RHEL_9_Server through the Switch on designated ports (e.g., Oracle Port 1521).
2. **Firewall Enforcement:** All traffic exiting to the Net must pass through the pfSense (e1 to e0).
3. **Verification (Database Success):**
   Evidence: The RHEL 9 Server successfully hosts the ORCLCDB instance.
   Final Proof: Querying banking_customers was successful, confirming that network-to-database connectivity is fully operational.
