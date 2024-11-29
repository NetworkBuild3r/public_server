#!/bin/bash

# Ensure a backup file is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <backup-file>"
  exit 1
fi

# Restore the backup
tar -xzf "$1" -C /

echo "Backup restored from $1"
