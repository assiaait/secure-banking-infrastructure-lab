🏦 Secure Banking Infrastructure Lab
📝 Project Overview
This project demonstrates the deployment of a secure, enterprise-grade banking infrastructure using EVE-NG. The goal is to simulate a production-ready environment for financial services, focusing on network segmentation, advanced database security, and modern Linux administration.

🏗️ Architecture

![Banking Lab Architecture](docs/architecture-diag.drawio.png)
> 💡 **Technical Note:** Detailed networking and IP addressing plan can be found in [docs/networking-plan.md](./docs/networking-plan.md).

The lab is designed with three distinct security zones:

User Zone: Internal banking users for client-side simulations.

Transit Zone: Managed by a pfSense Firewall to control and audit all traffic flow.

Secure DB Zone: Hosting a Red Hat Enterprise Linux 9 server, hardened for database workloads.

💡 Technical Note: Detailed networking and IP addressing plan can be found in docs/networking-plan.md.

🛠️ Technologies Used
Hypervisor: EVE-NG.

Operating System: Red Hat Enterprise Linux (RHEL) 9.

Firewall: pfSense.

Database: Oracle Database 19c Enterprise Edition (The gold standard for banking).

Security: Firewalld, Network Segmentation, SSH Hardening.

🚀 Key Implementation Steps
1. RHEL 9 Server Setup
Deployed RHEL 9 with an emphasis on the latest enterprise features.

Configured static networking (IP: 192.168.81.213) for reliable database connectivity.

Integrated Oracle Preinstall 19c to automate kernel tuning and user management.

2. Database Layer (Oracle 19c EE)
Successfully installed Oracle Database 19c Enterprise Edition using the RPM method.

Completed full database configuration (ORCLCDB) with 100% success.

Secured administrative accounts (SYS, SYSTEM) with hardened credentials.

Verified Oracle Listener functionality on port 1521.

3. Network Security (pfSense & Firewalld)
Implemented a dual-layer firewall strategy: pfSense for perimeter security and Firewalld for host-based protection.

Defined strict rules to allow only authorized banking users to access the DB Zone.

📊 Lab Results
Deployment: Database configuration reached 100% completion successfully.

Connectivity: Verified production-ready status of the Oracle Instance.

Compliance: Infrastructure aligns with core banking security principles.

---
*Created by Assia - Cybersecurity Master's Student at UPB.*
