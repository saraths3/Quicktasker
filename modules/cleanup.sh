#!/bin/bash

echo "[+] Performing system cleanup..."

sudo rm -rf /var/tmp/*
sudo journalctl --vacuum-time=7d
sudo apt-get autoremove -y 2>/dev/null || true
sudo dnf autoremove -y 2>/dev/null || true
sudo pacman -Rns $(pacman -Qdtq) --noconfirm 2>/dev/null || true

echo "[✓] Cleanup done."
