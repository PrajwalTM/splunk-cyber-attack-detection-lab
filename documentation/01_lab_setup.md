# ⚙️ Lab Setup

## 🔧 VM Environment

| Machine         | OS / Tool          | Purpose         |
|----------------|---------------------|-----------------|
| Kali Linux     | Attacker            | Run brute-force |
| Metasploitable | Vulnerable Target   | Simulate weak services |
| Windows        | Splunk Enterprise   | Monitor logs |

## 🔗 Network Setup (VirtualBox or VMware)

- **Adapter 1 (NAT):** For Internet access
- **Adapter 2 (Host-Only):** For internal lab communication

### 🧠 IP 

| Machine         | IP Address         |
|----------------|---------------------|
| Kali Linux     | 192.168.56.103      |
| Metasploitable | 192.168.56.105      |
| Splunk (Win)   | 192.168.56.104      |

## 📝 Splunk Input Setup

1. In Splunk: `Settings → Data Inputs → UDP → Add`
2. Port: `514`
3. Source Type: `syslog`
4. Index: `linux_log`

## 🧾 Rsyslog on Metasploitable

Edit `/etc/rsyslog.conf`:

