# My Custom Linux Scripts

This folder contains helper scripts I've written to automate tasks on Linux (Ubuntu).

yes
---

## `stardew_backup.sh`

A rolling backup script for Stardew Valley saves on Linux.

### What It Does

1.  **Copies:** Finds the Stardew Valley `Saves` folder.
2.  **Backs Up:** Creates a new timestamped folder in `$HOME/Backups/StardewValley` and copies all saves into it.
3.  **Cleans Up:** Deletes the oldest backup folders, keeping only the 5 newest ones.

### Configuration

You can edit these variables at the top of the script:
* `SOURCE_DIR`: The folder to back up (defaults to `~/.config/StardewValley/Saves`).
* `BACKUP_DIR`: The folder to save backups into (defaults to `~/Backups/StardewValley`).
* `MAX_BACKUPS`: How many backups to keep (defaults to `5`).

### How to Use

1.  Make it executable (only need to do this once):
    ```bash
    chmod +x stardew_backup.sh
    ```

2.  Run it:
    ```bash
    ./stardew_backup.sh
    ```
