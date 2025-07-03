# QuickTasker

![QuickTasker Logo](https://github.com/saraths3/Quicktasker/raw/refs/heads/main/logo.png)

**QuickTasker** is a cross-distro Linux automation toolkit that simplifies system administration.  
With one command, you can set up essential packages, clean junk, and prepare your system — regardless of which Linux distribution you're using.

---

## Features

- Works on Debian, Ubuntu, Fedora, Arch, openSUSE, Manjaro, WSL
- Installs essential software (curl, git, htop, neofetch, etc.)
- Cleans logs, temporary files, package cache, and orphaned packages
- Modular structure (plug your own scripts into the `modules/` folder)
- Automatically detects distro and uses the correct package manager
- Dry-run mode to preview changes
- Minimal, readable Bash code

---

## Supported Distributions

| Distribution     | Status       |
|------------------|--------------|
| Ubuntu / Debian  | Supported    |
| Fedora / RHEL    | Supported    |
| Arch / Manjaro   | Supported    |
| openSUSE         | Supported    |
| Linux Mint       | Supported    |
| WSL (Ubuntu)     | Supported    |

---

## Getting Started

### 1. Clone the repository

```bash
git clone git@github.com:saraths3/quicktasker.git
cd quicktasker
