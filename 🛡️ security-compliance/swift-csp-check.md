# 🛡️ SWIFT CSP Compliance Check

This document verifies the infrastructure against the **SWIFT Customer Security Programme (CSP)** controls, specifically focusing on **Control 1.1: SWIFT Environment Protection**.

---

### 🧱 1. Segmentation & Firewalling (Control 2.1)
The infrastructure is segmented using a dedicated **pfSense Firewall** to isolate the Oracle Database from unauthorized zones.

* **Implementation**: A specific rule was created to allow only **Port 1521 (SQL)** traffic from the internal user to the database.
* **Target Asset**: RHEL 9 Database Server (`192.168.1.10`).

> **Evidence of Security Policy:**
> *The rule "Allow Internal User to Access Oracle DB" is active and enforced.*
> ![pfSense Rule Verification](../docs/image_2f71c3.png)

---

### 🖥️ 2. Secure Terminal Configuration
The internal banking user terminal (**VPCS**) is configured with a static IP identity to ensure traceability and prevent unauthorized spoofing.

| Compliance Check | Command Used | Expected Result | Status |
| :--- | :--- | :--- | :--- |
| **IP Identity** | `show ip` | `192.168.1.20` | ✅ Pass |
| **Gateway Verification** | `ping 192.168.1.1` | `0% Packet Loss` | ✅ Pass |

---

### 🛡️ 3. Server Hardening (Control 5.1)
The **RHEL 9 Server** hosting the database has been hardened to restrict unnecessary services and maintain a minimal attack surface.

**Verification Command:**
```bash
# Checking active network interfaces and service listening status
ip a && netstat -tuln
# Checking active network interfaces and service listening status
ip a && netstat -tuln
