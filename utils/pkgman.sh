#!/bin/bash

detect_distro() {
  if [ -f /etc/os-release ]; then
    . /etc/os-release
    DISTRO=$ID
  else
    DISTRO=$(uname -s)
  fi
}

install_pkg() {
  PKG="$1"
  detect_distro

  case $DISTRO in
    ubuntu|debian) sudo apt install -y "$PKG" ;;
    fedora|rhel|centos) sudo dnf install -y "$PKG" ;;
    arch|manjaro) sudo pacman -S --noconfirm "$PKG" ;;
    opensuse*) sudo zypper install -y "$PKG" ;;
    *)
      echo "Unsupported distro: $DISTRO"
      exit 1
      ;;
  esac
}
