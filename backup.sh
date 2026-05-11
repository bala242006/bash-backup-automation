#!/bin/bash
# Daily backup script
SRC=/path/to/source
DEST=/path/to/backup
LOG=backup.log
 
echo "Backup started at $(date)" >> $LOG
rsync -avz --delete $SRC $DEST >> $LOG 2>&1
echo "Backup completed at $(date)" >> $LOG
