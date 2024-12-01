#~/bin/bash

SOURCE_DIR=~/staging_config/
DEST_DIR=~/printer_data/config/

rsync -av --delete \
    --exclude='LICENSE' \
    --exclude='README.md' \
    --exclude='.git' \
    --exclude='.gitignore' \
    --exclude='sync_config.sh' \
    "$SOURCE_DIR" "$DEST_DIR"

sudo service klipper restart
