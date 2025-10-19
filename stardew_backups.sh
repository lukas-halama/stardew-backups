#!/bin/bash

SOURCE_DIR="$HOME/.config/StardewValley/Saves"
BACKUP_DIR="$HOME/Backups/StardewValley"
MAX_BACKUPS=5

# 1. Create the new backup
TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)
DEST_FOLDER="$BACKUP_DIR/$TIMESTAMP"

echo "Backing up to $DEST_FOLDER"
mkdir -p "$BACKUP_DIR"
cp -r "$SOURCE_DIR" "$DEST_FOLDER"

# 2. Go to the main backup directory to clean it
cd "$BACKUP_DIR"

# 3. Clean up old backups one by one
# 'ls -1 | wc -l' counts the total number of backups
while [ $(ls -1 | wc -l) -gt $MAX_BACKUPS ]; do
    
    # 'ls -1t | tail -n 1' finds the single oldest file/folder
    OLDEST=$(ls -1t | tail -n 1)
    
    echo "Removing old backup: $OLDEST"
    rm -r "$OLDEST"
done

echo "Backup complete. Kept $MAX_BACKUPS."
