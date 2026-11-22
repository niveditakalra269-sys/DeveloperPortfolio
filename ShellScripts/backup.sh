#!/bin/bash
# Author: Nivedita Kalra
# Purpose: Create compressed backup of a target folder

if [ -z "$1" ]; then
    echo "Usage: ./backup.sh <folder>"
    exit 1
fi

if [ ! -d "$1" ]; then
    echo "Error: Folder '$1' does not exist."
    exit 1
fi

BACKUP_DIR="$HOME/DeveloperPortfolio_Backups"
mkdir -p "$BACKUP_DIR"

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
ARCHIVE="$BACKUP_DIR/backup_${TIMESTAMP}.tar.gz"

tar -czf "$ARCHIVE" "$1" 2>/dev/null
SIZE=$(du -h "$ARCHIVE" | cut -f1)

echo "Backup created successfully: $ARCHIVE (Size: $SIZE)"
echo "[$TIMESTAMP] Backup created: $ARCHIVE ($SIZE)" >> "$BACKUP_DIR/backup.log"
