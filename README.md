<p align="center">
  <img src="assets/banner.png" alt="Splunk Cyber Attack Detection Lab" width="100%">
</p>

# 🔍 Splunk Cyber Attack Detection Lab

![Platform](https://img.shields.io/badge/Platform-VirtualBox%20%7C%20VMware-blue)
![Metasploitable2](https://img.shields.io/badge/Victim-Metasploitable2-red)
![SIEM](https://img.shields.io/badge/SIEM-Splunk%20Enterprise-orange)
![Target](https://img.shields.io/badge/Target-Metasploitable2-red)
![Tools](https://img.shields.io/badge/Tools-Kali%20Linux%2C%20Nmap%2C%20Hydra-brightgreen)
![MITRE ATT&CK](https://img.shields.io/badge/MITRE-TTPs-yellow)
![Status](https://img.shields.io/badge/Status-Completed-success)


A hands-on project simulating real-world cyber attacks using **Kali Linux** against **Metasploitable 2**, with log monitoring and alerting in **Splunk Enterprise**. This lab showcases threat detection, SIEM dashboards, and alerting mechanisms in a controlled environment — ideal for learning, research, or demonstrating cybersecurity skills to recruiters.

---

                                                             +------------------+
                                                             |  Kali Linux      |
                                                             |  Attacker (103)  |
                                                             +--------+---------+
                                                                      |
                                                              Simulated Attacks
                                                                      ↓
                                                             +--------+---------+
                                                             | Metasploitable 2 |
                                                             | Victim (105)     |
                                                             +--------+---------+
                                                                      |
                                                             Rsyslog Forwarding
                                                                      ↓
                                                             +--------+---------+
                                                             | Splunk Enterprise |
                                                             | SIEM (Windows 104)|
                                                             +------------------+

- 🧪 **Kali Linux** — Brute-force, scanning, exploit tools  
- 🔓 **Metasploitable 2** — Target with vulnerable services  
- 📈 **Splunk Enterprise** — Detect, alert, visualize threats

---
**VirtualBox/VMware Network Configuration:**

- Adapter 1: NAT (for internet)
- Adapter 2: Host-only (for internal attack traffic)

---

## 🔧 Tools Used

- 💻 Kali Linux: `hydra`, `nmap`, `nikto`, `msfconsole`
- 🐧 Metasploitable 2: vulnerable services like FTP, SSH, Telnet, MySQL
- 📊 Splunk Enterprise (Windows): syslog receiver, dashboard, alert engine
- 🔐 Rsyslog: log forwarder from Metasploitable to Splunk

---
## 📂 Table of Contents

- [`01_lab_setup.md`](documentation/01_lab_setup.md)
- [`02_attack_ftp_bruteforce.md`](documentation/02_attack_ftp_bruteforce.md)
- [`03_attack_telnet_bruteforce.md`](documentation/03_attack_telnet_bruteforce.md)
- [`04_attack_ssh_bruteforce.md`](documentation/04_attack_ssh_bruteforce.md)
- [`05_attack_nmap_scan.md`](documentation/05_attack_nmap_scan.md)
- [`06_splunk_dashboard.md`](documentation/06_splunk_dashboard.md)
- [`07_reporting_and_email_alerts.md`](documentation/07_reporting_and_email_alerts.md)
- [`alertconfiguration.md`](documentation/alertconfiguration.md)
- [`alert_troubleshooting.md`](documentation/alert_troubleshooting.md)

---

## 📊 Custom Splunk Dashboard

> View your real-time attacks on the dashboard.

💾 Dashboard XML: [`dashboards/attack_monitoring.xml`](dashboards/attack_monitoring.xml)

---

## 📁 Sample Log Output

| _time               | host           | _raw                               |
|---------------------|----------------|------------------------------------|
| `2025-07-10T10:05`  | metasploitable | `530 Login incorrect (FTP)`       |
| `2025-07-10T10:08`  | metasploitable | `NMAP_SCAN: TCP SYN scan`         |
| `2025-07-10T10:10`  | metasploitable | `telnet: login incorrect`         |

---

## 🚨 Triggered Alerts

✅ Created Splunk alerts for:

- FTP Brute-Force Detection  
- Telnet Login Failures  
- SSH Login Attacks  
- Nmap Port Scans  
- vsftpd Exploit Traces

📨 Email alerts are sent via Gmail SMTP.  
🔎 Event logs recorded for SIEM visibility.

---

## 🖼️ Screenshots

Screenshots are organized here:
- [`screenshots/`](screenshots/)
- [`kali_sc/`](kali_sc/)
- Named by attack and sequence, e.g., `06_vsftpd_exploit_kali-1.png`

---

## 🔧 Troubleshooting & Fixes

- 📘 [`alert_troubleshooting.md`](documentation/alert_troubleshooting.md)
- 💾 [`troubleshooting_disk_space.md`](documentation/troubleshooting_disk_space.md)

---

## 🌟 Future Enhancements

- Add SIEM enrichment (GeoIP, risk scoring)
- Expand into Splunk SOAR playbooks
- Add MITRE ATT&CK tags to all alerts
- Containerize setup for faster deployment

---

---

## 💡 How to Use This Project

1. Clone or fork the repo
2. Follow `01_lab_setup.md` to set up your virtual lab
3. Simulate attacks via Kali Linux
4. Use Splunk dashboards + alerts to detect attacks
5. Customize or add more scenarios!

---

## 🌐 Author & Contact
👤 Prajwal T M
> Open to feedback and collaboration!  
📧 Email: [prajwaltm42@gmail.com](mailto:prajwaltm42@gmail.com)  
🔗 [LinkedIn – Prajwal T M](https://www.linkedin.com/in/prajwal-t-m-585b81255/)
📦 [Github – Prajwal T M](https://github.com/PrajwalTM/)

## 📘 License

This project is for **educational** and **demonstration** purposes only. No real-world production use.


