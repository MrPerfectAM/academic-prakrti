# Python Audit - Script Execution Outputs

This document contains simulated terminal outputs for the 5 audit scripts.

---

## 1. System Identity Report (`01-identify.sh`)
```bash
prakritiverma@ubuntu-server:~/Python$ ./01-identify.sh
================================================================================
                   Python AUDIT - SYSTEM IDENTITY                    
================================================================================
Linux Distribution: Ubuntu 22.04.3 LTS
Kernel Version:     5.15.0-89-generic
Current User:       prakritiverma
Home Directory:     /home/prakritiverma
System Uptime:      up 2 hours, 45 minutes
Current Date/Time:  Mon Mar 30 2026 18:26:19 GMT+0000 (Coordinated Universal Time)
--------------------------------------------------------------------------------
Message: This system runs on Open Source software, providing freedom to study, change, and distribute.
================================================================================
```
---

## 2. FOSS Package Inspector (`02-packages.sh`)
```bash
prakritiverma@ubuntu-server:~/Python$ ./02-packages.sh
================================================================================
                   Python AUDIT - PACKAGE INSPECTOR                 
================================================================================
Status: python3 is INSTALLED on this Debian/Ubuntu system.
Version: 3.10.6-1ubuntu1~22.04.1
--------------------------------------------------------------------------------
FOSS Philosophy Notes:
 - Python: Python is a high-level, interpreted programming language that is widely used for web development, scientific computing, and data analysis.
 - Linux: Linux is an open-source operating system that is widely used in servers, desktops, and mobile devices.
 - Git: Git is a version control system that is widely used for software development and collaboration.
 - Vim: Vim is a text editor that is widely used by programmers and developers.
================================================================================
```
---

## 3. Disk and Permission Auditor (`03-auditor.sh`)
```bash
prakritiverma@ubuntu-server:~/Python$ ./03-auditor.sh
Directory: /etc
total 1564
-rw-r--r-- 1 root root  3079 Mar 29 07:11 adduser.conf
-rw-r--r-- 1 root root  2451 Mar 29 07:11 aliases
-rw-r--r-- 1 root root  1345 Mar 29 07:11 anacrontab

Directory: /var/log
total 4096
-rw-r--r-- 1 root root  1024 Mar 29 07:11 alternatives.log
-rw-r--r-- 1 root root  2048 Mar 29 07:11 apt

Directory: /usr/bin
total 4096
-rwxr-xr-x 1 root root 1024 Mar 29 07:11 [
-rwxr-xr-x 1 root root 2048 Mar 29 07:11 bash

Directory: /usr/lib
total 8192
-rw-r--r-- 1 root root 1024 Mar 29 07:11 ld-linux-x86-64.so.2
-rw-r--r-- 1 root root 2048 Mar 29 07:11 libc.so.6

Directory: /usr/lib/python3
total 4096
-rw-r--r-- 1 root root 1024 Mar 29 07:11 __init__.py
-rw-r--r-- 1 root root 2048 Mar 29 07:11 _sysconfigdata_m_linux_x86_64-linux-gnu.py

Directory: /usr/bin/python3
total 1024
-rwxr-xr-x 1 root root 1024 Mar 29 07:11 python3
```
---

## 4. Log File Analyzer (`04-logs.sh`)
```bash
prakritiverma@ubuntu-server:~/Python$ ./04-logs.sh /var/log/syslog error
Found 10 occurrences of 'error' in /var/log/syslog.
Last 5 matches:
Mar 29 07:11:01 ubuntu-server CRON[1234]: error
Mar 29 07:11:02 ubuntu-server CRON[1235]: error
Mar 29 07:11:03 ubuntu-server CRON[1236]: error
Mar 29 07:11:04 ubuntu-server CRON[1237]: error
Mar 29 07:11:05 ubuntu-server CRON[1238]: error
```
---

## 5. Open Source Manifesto Generator (`05-manifesto.sh`)
```bash
prakritiverma@ubuntu-server:~/Python$ ./05-manifesto.sh
What is your name? John Doe
What is your favorite programming language? Python
What do you think is the most important aspect of open-source software? Collaboration
My name is John Doe, and I am a passionate advocate for open-source software. I believe that Python is an excellent language for collaborative development, and I think that the most important aspect of open-source software is Collaboration.
```
