# 🌐 Web Vulnerability Scanning with Nikto

## 🎯 Objective
Use **Nikto** (a web scanner) to detect vulnerabilities in the Metasploitable 2 web server and monitor potential scan behavior via logs in **Splunk**.

---

## 🛠️ Tools & Setup

| Tool           | Role                            |
|----------------|----------------------------------|
| Nikto (Kali)   | Scans Metasploitable web server |
| Metasploitable | Hosts vulnerable Apache server  |
| Splunk         | Collects and analyzes web logs  |

- **Target IP (Metasploitable)**: `192.168.56.105`
- **Kali IP**: `192.168.56.103`
- **Splunk IP**: `192.168.56.104`

---

### 🔎 Nikto Web Scan from Kali

This screenshot shows the Nikto command executed in Kali Linux targeting the vulnerable Metasploitable 2 machine.

![Nikto Scan from Kali](../screenshots/nikto_scan_kali.png)

## ⚔️ Attack Command (Nikto)

```bash
nikto -h http://192.168.56.105

