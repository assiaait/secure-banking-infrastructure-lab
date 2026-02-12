# Secure Banking Infrastructure Lab 🛡️🏦

## Project Overview
This project demonstrates the deployment of a secure, enterprise-grade banking infrastructure using **EVE-NG**. The goal is to simulate a production-ready environment for financial services, focusing on network segmentation, database security, and Linux administration.

## 🏗️ Architecture
![Banking Lab Architecture](docs/architecture-diag.drawio.png)
> 💡 **Technical Note:** Detailed networking and IP addressing plan can be found in [docs/networking-plan.md].
The lab is designed with three distinct security zones:
1. **User Zone:** For client-side simulations.
2. **Transit Zone:** Managed by a **pfSense Firewall** to control traffic flow.
3. **Secure DB Zone:** Hosting a **Red Hat Enterprise Linux (RHEL 8.4)** server with **Oracle **.

## 🛠️ Technologies Used
* **Hypervisor:** EVE-NG
* **Operating System:** Red Hat Enterprise Linux (RHEL) 8
* **Firewall:** pfSense
* **Database:** Oracle Database XE 21c
* **Security:** Firewalld, Network Segmentation, SSH Hardening

## 🚀 Key Implementation Steps

### 1. RHEL 8 Server Setup
* Deployed RHEL 8 with a focus on enterprise stability.
* Configured static networking using `nmcli` for reliable database connectivity.
* Applied basic system hardening and user management (`oracleadmin`).

### 2. Database Layer (Oracle SQL)
* Installed Oracle XE 21c on the RHEL backend.
* Configured Oracle Listener on port **1521** with restricted access.
* Designed SQL schemas to simulate banking transactions.

### 3. Network Security (pfSense)
* Implemented strict firewall rules to ensure only authorized traffic reaches the Database zone.
* Simulated real-world banking "Flow Automation" patterns.

## 📊 Lab Results
* **Connectivity:** Verified secure communication between zones using controlled routing.
* **Security:** Successful blocking of unauthorized access attempts to the DB port.
* **Performance:** Optimized RHEL kernel settings for database workloads.

---
*Created by Assia - Cybersecurity Master's Student at UPB.*
