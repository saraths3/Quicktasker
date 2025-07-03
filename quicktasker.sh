#!/bin/bash

set -e

# Load config
[ -f ".quicktasker.conf" ] && source .quicktasker.conf

# Detect OS
source utils/pkgman.sh

# Help Function
show_help() {
  echo "Usage: $0 [--setup] [--clean] [--dry-run] [--help]"
  echo ""
  echo "  --setup      Install basic tools and packages"
  echo "  --clean      Perform system cleanup"
  echo "  --dry-run    Show what would happen"
  echo "  --help       Show this help message"
  exit 0
}

# Parse arguments
while [[ "$#" -gt 0 ]]; do
  case $1 in
    --setup)      DO_SETUP=1 ;;
    --clean)      DO_CLEAN=1 ;;
    --dry-run)    DRY_RUN=1 ;;
    --help)       show_help ;;
    *) echo "Unknown option: $1"; show_help ;;
  esac
  shift
done

# Dry-run message
if [[ $DRY_RUN == 1 ]]; then
  echo "[DRY-RUN] Would perform:"
  [[ $DO_SETUP == 1 ]] && echo " - Syst_]()]()
