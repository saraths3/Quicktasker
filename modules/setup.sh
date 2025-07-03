#!/bin/bash

echo "[+] Installing essential packages..."

ESSENTIALS=("curl" "git" "htop")

for pkg in "${ESSENTIALS[@]}"; do
  echo "[*] Installing $pkg..."
  source utils/pkgman.sh
  install_pkg "$pkg"
done

echo "[✓] Setup complete."
