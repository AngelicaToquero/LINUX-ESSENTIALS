#!/bin/bash

# === Functions ===

check_updates() {
  echo ">> Checking for system updates..."
  sudo apt update && sudo apt list --upgradable
  echo ""
}

show_network() {
  echo ">> Showing active network connections..."
  ss -tuln
  echo ""
}

recent_files() {
  echo ">> Listing files modified in the last 24 hours (in /home)..."
  find /home -type f -mtime -1 -ls 2>/dev/null | head -10
  echo ""
}

backup_folder() {
  read -p "Enter the folder to backup (e.g., /home/user/Documents): " src
  read -p "Enter the destination folder (e.g., /home/user/Backup): " dest
  mkdir -p "$dest"
  cp -r "$src" "$dest"
  echo ">> Backup of '$src' completed to '$dest'."
  echo ""
}

# === Display Menu ===
while true; do
  echo "==========================="
  echo " Linux Monitor Tool"
  echo "==========================="
  echo "1. Check for System Updates"
  echo "2. Show Active Network Connections"
  echo "3. List Recently Modified Files"
  echo "4. Backup a Folder"
  echo "5. Exit"
  echo "==========================="

  read -p "Choose an option [1-5]: " choice
  case $choice in
    1) check_updates ;;
    2) show_network ;;
    3) recent_files ;;
    4) backup_folder ;;
    5) echo "Exiting..."; break ;;
    *) echo "Invalid option. Please choose 1-5." ;;
  esac
done
