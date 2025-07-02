# 🛡️ Splunk Attack Detection Lab

This project simulates cyberattacks using **Kali Linux** and detects them in **Splunk** via custom dashboards and alerts.

## 🧪 Lab Setup

| Machine | OS | Role |
|---------|----|------|
| Kali | Kali Linux | Attacker |
| Metasploitable | Ubuntu | Target |
| Windows | Windows + Splunk | SIEM |

## 🔥 Simulated Attacks
- FTP brute-force (Hydra)
- SSH brute-force
- Nmap port scanning
- Web scan (Nikto)

## 📊 Splunk Work
- Syslog Ingestion (UDP 514)
- Custom dashboards
- Email alerts

## 🚀 Run Attacks
```bash
bash scripts/simulate_attacks.sh
