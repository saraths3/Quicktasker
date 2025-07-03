# 🚀 QuickTasker

**QuickTasker** is a powerful yet simple Linux automation toolkit built to work across **all major Linux distributions**. It helps automate routine system administration tasks like package installation, system cleanup, and optimization — all with a single command.

Whether you're using Debian, Fedora, Arch, or even WSL, QuickTasker is designed to detect your distro and run compatible commands using a modular, extensible script system.

---

## 🔧 Features

- ✅ Cross-distro support (Debian, Ubuntu, Fedora, Arch, openSUSE, Manjaro, WSL)
- 📦 Installs essential tools (e.g., `curl`, `git`, `htop`)
- ♻️ Cleans system cache, logs, temp files, and unused packages
- ⚙️ Optimizes performance with best practices (coming soon)
- 🔐 Optional firewall setup & SSH hardening (planned)
- 🧩 Modular — easy to plug in your own scripts
- 🔍 Dry-run mode to preview actions without executing them

---

## 🖥️ Supported Distributions

| Distribution     | Status       |
|------------------|--------------|
| Ubuntu / Debian  | ✅ Supported |
| Fedora / RHEL    | ✅ Supported |
| Arch / Manjaro   | ✅ Supported |
| openSUSE         | ✅ Supported |
| Linux Mint       | ✅ Supported |
| WSL (Ubuntu)     | ✅ Supported |

---

## 🚀 Getting Started

### 1. Clone the repository

```bash
git clone git@github.com:saraths3/quicktasker.git
cd quicktasker
chmod +x quicktasker.sh

