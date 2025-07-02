#  Cybersecurity Attack Detection Lab Report

## 🧠 Project Summary

This project simulates multiple cyberattacks from Kali Linux on a vulnerable Metasploitable 2 machine and monitors them using Splunk SIEM (installed on Windows). Custom dashboards and alerts were created to detect and respond to these attacks, simulating a basic SOC environment.

---

## 🧱 Lab Environment Setup

| Component        | Configuration                        |
|------------------|---------------------------------------|
| 💻 Kali Linux    | Attacker machine (Host-only network)  |
| 📦 Metasploitable 2 | Target vulnerable system             |
| 🖥️ Splunk (Windows) | Log analysis + alert engine (with GUI) |
| Network Setup    | NAT + Host-only for all 3 VMs         |
| Syslog Setup     | rsyslog forwarding from Metasploitable to Splunk |

---

## 🔍 Attack Scenarios Simulated

| # | Attack Type        | Tool Used     | Description |
|---|--------------------|---------------|-------------|
| 1 | FTP Brute Force    | Hydra         | Used wordlist to brute force FTP login (`530 Login incorrect`) |
| 2 | SSH Brute Force    | Hydra         | Brute force against SSH port (`Failed password`) |
| 3 | Web Scan (Nikto)   | Nikto         | Detected web vulnerability scan in logs |
| 4 | Port Scanning      | Nmap          | Simulated horizontal port scanning |
| 5 | Manual Shell Access| Netcat/FTP    | Manually accessed services to generate logs |

---

## 📥 Log Collection (rsyslog)

Metasploitable `/etc/rsyslog.conf`:

```bash
*.* @192.168.56.104:514

