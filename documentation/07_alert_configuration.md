---

## ⚙️ Step-by-Step: Configure "Log Event" Trigger Action

Once your alert search is ready and you’ve set the trigger conditions, follow these steps to configure the **Log Event** action.

---

### ✅ Step 1: Enable "Log Event" Trigger

- In the alert creation window:
  - Scroll to **Trigger Actions**
  - ✅ Check **Log Event**

---

### ✏️ Step 2: Define the Log Event Parameters

You will see the following fields under "Log Event". Fill them as shown below:

| Field         | Value                          | Description                            |
|---------------|--------------------------------|----------------------------------------|
| **Source**    | `alert:nmap_scan`              | You can name the source for tracking   |
| **Sourcetype**| `nmap_alert`                   | Custom sourcetype for alerts           |
| **Host**      | `splunk_server`                | Identifies where the alert is from     |
| **Index**     | `linux_logs`                   | Use the index receiving syslog data    |
| **Event**     | `Nmap Scan Detected` or `$name$` | What should be logged when triggered |

---

### 📥 Example Filled Form

```text
Source:       alert:nmap_scan  
Sourcetype:   nmap_alert  
Host:         splunk_server  
Index:        linux_log  
Event:        Nmap Scan Detected from $result.src_ip$
