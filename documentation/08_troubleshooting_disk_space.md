# 🛠️ Troubleshooting: Splunk Disk Space Warnings

## 🚨 Issue

Splunk shows the following health warning:

> ⚠️ Diskspace remaining has breached the yellow threshold for multiple index paths.

This means your system is **running low on disk space**, especially under:

C:\Program Files\Splunk\var\lib\splunk\


This affects internal indexes like:

- `_internal`
- `_audit`
- `_metrics`
- `_configtracker`
- `_introspection`

---

## 📉 Why It Happens

Splunk uses a `minFreeSpace` threshold (default: 5,000 MB). If the available disk space falls below **2× this value**, Splunk triggers a **yellow health warning**.

> Example log message:
MinFreeSpace=5000. The diskspace remaining=7663 is less than 2 x minFreeSpace on C:\Program Files\Splunk\var\lib\splunk_internaldb


---

## ✅ Fix: Clean Up Old Internal Logs (Safe in Labs)

### Step 1: Stop Splunk

Open PowerShell or CMD as Administrator:

```
cd "C:\Program Files\Splunk\bin"
splunk stop
Wait for confirmation that Splunk has stopped completely.
```

### Step 2: Clean Index Data

After Splunk is stopped, run:
```
splunk clean eventdata -index _internal
splunk clean eventdata -index _audit
splunk clean eventdata -index _metrics
This removes old internal logs.
```

❗ Only do this in lab/test environments. Don't clean indexes in production without a retention plan.

### Step 3: Start Splunk
```
splunk start
