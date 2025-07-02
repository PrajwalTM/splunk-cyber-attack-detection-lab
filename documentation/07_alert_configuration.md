# 🚨 06_alert_configuration.md — Configure Alerts in Splunk

This document explains how to manually create alerts in Splunk to detect cyberattacks simulated from Kali Linux on Metasploitable 2, and visualize them in dashboards.

---

## ✅ Prerequisites

Make sure:

- Splunk is installed and accessible (`http://localhost:8000`)
- Index `linux_logs` exists and is receiving logs from Metasploitable
- Sourcetype used is `syslog`
- Your attack logs are searchable in Splunk

### 🔍 Test Search:

```spl
index=linux_logs sourcetype=syslog
