QuickTasker
===========

![QuickTasker Banner](https://github.com/saraths3/Quicktasker/raw/main/logo.png)

QuickTasker is a powerful yet simple Linux automation toolkit built to work across all major Linux distributions. 
It helps automate routine system administration tasks like package installation, system cleanup, and optimization — 
all with a single command.

Whether you're using Debian, Fedora, Arch, or even WSL, QuickTasker is designed to detect your distro and run 
compatible commands using a modular, extensible script system.

---------------------------------------
Features
---------------------------------------

- Cross-distro support (Debian, Ubuntu, Fedora, Arch, openSUSE, Manjaro, WSL)
- Installs essential tools (e.g., curl, git, htop)
- Cleans system cache, logs, temp files, and unused packages
- Optimizes performance with best practices (coming soon)
- Optional firewall setup & SSH hardening (planned)
- Modular — easy to plug in your own scripts
- Dry-run mode to preview actions without executing them

---------------------------------------
Supported Distributions
---------------------------------------

Ubuntu / Debian   - Supported
Fedora / RHEL     - Supported
Arch / Manjaro    - Supported
openSUSE          - Supported
Linux Mint        - Supported
WSL (Ubuntu)      - Supported

---------------------------------------
Getting Started
---------------------------------------

1. Clone the repository:

    git clone git@github.com:saraths3/quicktasker.git
    cd quicktasker
    chmod +x quicktasker.sh

2. Run the script:

    ./quicktasker.sh --setup --clean

---------------------------------------
Command Line Options
---------------------------------------

Usage:

    ./quicktasker.sh [OPTIONS]

Options:

    --setup       Installs essential packages like curl, git, htop
    --clean       Performs cleanup (logs, apt cache, orphaned packages, etc.)
    --dry-run     Displays what will be done without executing
    --help        Prints usage instructions

----------------------------------------
How It Works
---------------------------------------

- quicktasker.sh parses user arguments and runs the necessary modules.
- utils/pkgman.sh detects the distro and uses the appropriate package manager (apt, dnf, pacman, zypper, etc.).
- Task logic is separated into modules like setup.sh and cleanup.sh.
- You can add your own modules inside the modules/ directory to expand functionality.

---------------------------------------
Planned Features
---------------------------------------

- optimize.sh      -> Tune system performance, enable parallel downloads
- firewall.sh      -> Enable UFW, secure SSH settings
- Logging support
- Uninstall / rollback support
- Zenity-based desktop GUI

---------------------------------------
License
---------------------------------------

This project is licensed under the MIT License.  
See the LICENSE file for more information.

---------------------------------------
Author
---------------------------------------

Sarath S  
GitHub: https://github.com/saraths3

Contributions, suggestions, bug reports, and stars are welcome.
