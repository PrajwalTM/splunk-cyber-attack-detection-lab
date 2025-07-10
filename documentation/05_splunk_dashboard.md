# 📊 Splunk Dashboard – Cyber Attack Monitoring

## 🎯 Objective

The goal of this dashboard is to **visually monitor simulated cyberattacks** carried out from Kali Linux on a vulnerable Metasploitable 2 machine. The dashboard provides real-time insights into brute-force attacks, web scans, and port scans by analyzing syslog data forwarded to Splunk.

---

## 🧰 Tools Used

| Tool               | Purpose                             |
|--------------------|-------------------------------------|
| **Splunk (Windows)** | Data ingestion, visualization       |
| **Metasploitable 2** | Vulnerable Linux machine (target)   |
| **Kali Linux**       | Attacker machine (Hydra, Nmap, Nikto) |
| **rsyslog**          | Log forwarding from Metasploitable to Splunk |

---

## 🧱 Dashboard Panels Overview

This dashboard contains the following key visualizations:

| Panel Title                | Purpose                               |
|----------------------------|----------------------------------------|
| FTP Brute Force Attempts   | Track failed FTP logins (`530 errors`) |
| SSH Brute Force Attempts   | Detect SSH login failures              |
| Web Scan (Nikto) Activity  | Visualize HTTP scan patterns           |
| Nmap Port Scan Detection   | Identify rapid port scanning activity  |
| Top Source IPs             | List top attacking IPs (optional)      |

---

## 📐 Index and Sourcetype Configuration

Ensure the following settings are used:

- **Index**: `linux_logs`
- **Sourcetype**: `syslog`
- **Input Type**: UDP 514 (configured in Splunk Inputs)

---

## 🧭 Manual Dashboard Construction Guide

To manually build each panel in Splunk Dashboard Studio, follow the detailed instructions here:

👉 [📄 Step-by-Step Panel Instructions](../instruction/create_panels_step_by_step.md)

This includes:
- Search queries
- Visualization types
- Panel titles
- Time ranges
- How to add and configure each element

---

## 📸 Final Dashboard Screenshot

> Upload your screenshot to `screenshots/splunk_dashboard_attacks.png`


