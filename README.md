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


2. Give execute permission to the main script

chmod +x quicktasker.sh

Running the Script

./quicktasker.sh [OPTIONS]

Common Examples

# Run full setup and cleanup
sudo ./quicktasker.sh --setup --clean

# Test actions without executing them
./quicktasker.sh --setup --clean --dry-run

# View help
./quicktasker.sh --help

    Note: Some operations require root privileges (sudo). Always run as root or with sudo for full functionality.

Available Options
Option	Description
--setup	Installs common tools (curl, git, htop, neofetch, etc.)
--clean	Cleans package cache, logs, temporary files, and orphans
--dry-run	Shows planned actions without executing them
--help	Displays usage instructions
Project Structure

quicktasker/
├── quicktasker.sh         # Main entry point
├── modules/
│   ├── setup.sh           # Handles installation logic
│   └── cleanup.sh         # Handles cleanup tasks
├── utils/
│   └── pkgman.sh          # Abstracts distro-specific package managers
└── .quicktasker.conf      # (Optional) Custom user config

How It Works

    quicktasker.sh reads user arguments and runs the appropriate modules.

    pkgman.sh detects your Linux distribution using /etc/os-release.

    Based on detection, it maps the correct commands for:

        apt (Debian/Ubuntu)

        dnf (Fedora/RHEL)

        pacman (Arch)

        zypper (openSUSE)

    It executes modular scripts like setup.sh, cleanup.sh, etc.

    You can plug in more modules under modules/ (e.g., optimize.sh, firewall.sh)

Logs

For debugging or dry-run output, log files are saved under:

/tmp/quicktasker-*.log

Use these logs to analyze what was done or what would have been executed.
Customizing

You can easily extend QuickTasker:

    Create a new module file in modules/

    Use Bash functions that source utils/pkgman.sh

    Add flags in quicktasker.sh to handle your new module

Planned Features

    optimize.sh: Enable parallel downloads, sysctl tweaks

    firewall.sh: UFW setup, SSH port hardening

    Logging with timestamps

    Rollback support

    Zenity GUI integration

License

This project is licensed under the MIT License.
See the LICENSE file for details.
Author

Sarath S
GitHub: @saraths3

    Contributions, bug reports, feedback, and stars are welcome!


---

### ✅ Next Actions

Would you like me to:

- Write this content directly into your `README.md` file?
- Push this to your GitHub repo automatically?
- Add an `MIT LICENSE` file now?

Let me know and we’ll finalize your `QuickTasker` v0.1 release!


