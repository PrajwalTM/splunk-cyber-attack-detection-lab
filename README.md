# 🛡️ Splunk Cyber Attack Detection Lab

This project simulates real-world attacks using **Kali Linux** on a vulnerable **Metasploitable 2** machine and detects them using **Splunk Enterprise** on a Windows system.

## 📘 Project Overview

| Machine         | Role                | IP Address |
|----------------|---------------------|-----------------------|
| Kali Linux      | Attacker             | 192.168.56.103        |
| Metasploitable 2| Vulnerable Target    | 192.168.56.105        |
| Windows         | Splunk SIEM         | 192.168.56.104        |

## 🔥 Simulated Attacks
- FTP brute force using `Hydra`
- SSH brute force
- Telnet login attempts
- Nmap scanning
- Nikto Web App scanning

## 🎯 Objective

- Learn SIEM operations
- Configure Splunk to receive Syslog logs from Linux systems
- Detect brute-force attacks using logs
- Build dashboards and alert rules in Splunk

## 📊 Splunk Features Implemented

- Syslog ingestion (UDP 514)
- Custom dashboards for FTP/SSH attacks
- Real-time alerts with email notifications

## 📸 Screenshots
*(Upload later in the `/screenshots` folder)*

---

## 🚀 How to Reproduce

1. Clone the repo
2. Set up 3 VMs: Kali, Metasploitable 2, Windows (Splunk)
3. Follow [documentation/01_lab_setup.md](documentation/01_lab_setup.md) to configure everything
4. Run attacks from Kali (see [scripts/simulate_attacks.sh](scripts/simulate_attacks.sh))
5. Watch dashboards and alerts in Splunk

---

## 📄 Detailed Walkthrough

- [Lab Setup](documentation/01_lab_setup.md)
- [FTP Brute Force Attack](documentation/02_attack_ftp_bruteforce.md)
- [SSH Brute Force Attack](documentation/03_attack_ssh_scan.md)
- [Creating Dashboards](documentation/04_splunk_dashboard.md)
- [Alert Configuration](documentation/07_alert_configuration.md)

---

## 👨‍💻 Skills Demonstrated

- Blue Team Detection
- Red Team Attack Simulation
- SIEM Dashboarding
- Linux Log Forwarding
- Splunk Alerting & Analysis

---

## 📬 Contact

- 📧 Email: prajwaltm42@gmail.com  
- 📱 Phone: +91 99723 60344  
- 🔗 LinkedIn: [Prajwal T M](https://www.linkedin.com/in/prajwal-t-m-585b81255/)
