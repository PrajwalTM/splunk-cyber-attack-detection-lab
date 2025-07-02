# 🚨 Splunk Alert Configuration – Cyber Attack Detection

## 🎯 Objective

Create alerts in Splunk to **detect real-time attacks** and notify you (via log, email, or UI) when suspicious behavior is identified on the Metasploitable 2 target system.

---

## 📘 Prerequisites

- Index: `linux_logs`
- Sourcetype: `syslog`
- Data is being received in real-time (test with: `index=linux_logs`)

---

## 🔹 How to Create an Alert (Step-by-Step)

### Step 1: Go to Splunk Search

- Navigate to: **Search & Reporting → Search**

---

### Step 2: Run an Attack-Specific Search

Example for FTP brute-force:

```spl
index=linux_logs sourcetype=syslog "ftp"

