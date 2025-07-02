# 🛰️ Port Scanning using Nmap

## 🎯 Objective
Use **Nmap** from Kali Linux to perform a port scan on the Metasploitable 2 machine and detect it via system logs in **Splunk**.

---

## 🛠️ Tools & Setup

| Tool         | Role                        |
|--------------|-----------------------------|
| Nmap (Kali)  | Scans ports on Metasploitable |
| Metasploitable | Target vulnerable services  |
| Splunk       | Detects abnormal traffic via syslog |

- **Target IP (Metasploitable)**: `192.168.56.105`
- **Attacker IP (Kali)**: `192.168.56.103`
- **Splunk IP**: `192.168.56.104`

> Rsyslog is enabled on Metasploitable and forwarding to Splunk.

---

## ⚔️ Attack Command (Nmap)

```bash
nmap -sS -sV -O 192.168.56.105

