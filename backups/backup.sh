#!/bin/bash

# Define the backup directory and timestamp
BACKUP_DIR="/opt/backups"
TIMESTAMP=$(date +%Y%m%d%H%M%S)
BACKUP_FILE="${BACKUP_DIR}/backup-${TIMESTAMP}.tar.gz"

# Create a tarball of /opt/appdata
mkdir -p "${BACKUP_DIR}"
tar -czf "${BACKUP_FILE}" /opt/appdata

echo "Backup created at ${BACKUP_FILE}"
