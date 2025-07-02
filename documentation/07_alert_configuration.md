📄 Added real-world Splunk alert configuration for FTP brute-force detection (alert_configuration.md)

This commit introduces a well-documented, hands-on guide to configuring alerts in Splunk
based on real attack traffic between Kali Linux (attacker) and Metasploitable 2 (victim).

🔍 Key Highlights:
- Step-by-step tutorial for creating Splunk alerts from scratch
- Detailed use case: Detecting FTP brute-force attacks using syslog events
  • Includes search example for "530 Login incorrect" failures
- UI walkthrough for setting:
  • Trigger conditions
  • Scheduling (Scheduled vs Real-Time)
  • Alert actions (log event, email notification, alert dashboard)
- Prerequisites checklist (index, sourcetype, real-time log validation)
- Emphasis on actionable threat detection aligned with MITRE ATT&CK techniques

🎯 Why it matters:
- Demonstrates practical SIEM alerting skills for blue team and SOC roles
- Builds credibility for detection engineering and incident response knowledge
- Shows the ability to design, implement, and explain security monitoring workflows

📁 File Added: `documentation/alert_configuration.md`
