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

## ⚔️ Attack Command (Nikto)

```bash
nikto -h http://192.168.56.105

