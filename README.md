<div align="center">

# 🛡️ Cybersecurity Lab Scripts 🛡️

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=600&size=25&pause=1000&color=00FF00&center=true&vCenter=true&width=600&lines=Initializing+Lab+Environment...;Accessing+Mainframe...;Executing+Payloads...;Welcome+to+the+Arsenal." alt="Typing SVG" />

<br/>

[![Status](https://img.shields.io/badge/Status-Active-brightgreen?style=for-the-badge&logo=github)](https://github.com/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)](https://opensource.org/licenses/MIT)
[![Bash](https://img.shields.io/badge/Language-Bash-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white)](https://www.gnu.org/software/bash/)
[![Python](https://img.shields.io/badge/Language-Python-3776AB?style=for-the-badge&logo=python&logoColor=white)](https://www.python.org/)

<br/>

**A curated collection of penetration testing, automation, and cybersecurity lab scripts.**  
Built for red teamers, blue teamers, and CTF enthusiasts.

<br/>

<img src="https://raw.githubusercontent.com/TheDudeThatCode/TheDudeThatCode/master/Assets/Developer.gif" alt="Hacker GIF" width="400"/>

</div>

---

## ⚡ Overview

Welcome to my personal cybersecurity playground. This repository contains the scripts, tools, and automation workflows I am developing as I progress through my cybersecurity career. 

From **network reconnaissance** and **vulnerability scanning** to **post-exploitation** and **forensics**, these scripts are designed to streamline operations in lab environments (like HackTheBox, TryHackMe, or local AD setups).

> [!CAUTION]
> **Disclaimer:** These tools are provided for educational and research purposes only. Only run these scripts against systems you own or have explicit permission to test. 

## 🧰 The Arsenal

*Below is a preview of the toolkit structure. As scripts are added, this index will grow.*

| Category | Script Name | Description | Status |
| :--- | :--- | :--- | :--- |
| 🔍 **Recon** | `auto-nmap.sh` | Automates staged Nmap scans (fast, full, detailed). | 🚧 WIP |
| 🔍 **Recon** | `subdomain-enum.py`| Concurrent subdomain brute-forcer and DNS resolver. | 🚧 WIP |
| 💥 **Exploit** | `cve-scanner.py` | Checks local services against the NVD database. | 🚧 WIP |
| 🔑 **PrivEsc** | `linpeas-runner.sh`| Fetches and executes LinPEAS, parsing the output. | 🚧 WIP |
| 🛡️ **Defensive**| `log-analyzer.py` | Parses Apache/Nginx logs for malicious payloads. | 🚧 WIP |

<details>
<summary><b>Click to view more categories...</b></summary>
<br>

- **Active Directory**: BloodHound data ingestors, Kerberoasting automations.
- **Web App**: Custom fuzzers, JWT manipulation scripts.
- **Cryptography**: Rapid hash identifiers and offline cracking wrappers.

</details>

## 🚀 Getting Started

### Prerequisites

Ensure you have the following installed in your environment (Kali Linux / Parrot OS recommended):

- Python 3.9+
- Bash / Zsh
- `nmap`, `gobuster`, `impacket`

### Installation

Clone the repository and make the scripts executable:

```bash
# Clone the repo
git clone https://github.com/yourusername/lab-scripts.git

# Navigate into the directory
cd lab-scripts

# Make all bash scripts executable
chmod +x **/*.sh
```

## 🛠️ Tech Stack & Tools

<p align="center">
  <img src="https://skillicons.dev/icons?i=kali,linux,python,bash,powershell,docker,aws,gcp" alt="Tech Stack"/>
</p>

---

<div align="center">
  <img src="https://media.giphy.com/media/26tn33aiTi1jYaMhO/giphy.gif" alt="Matrix" width="100%"/>
  <br/>
  <br/>
  <i>"There is no patch for human stupidity."</i>
</div>
