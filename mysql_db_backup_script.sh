#!/bin/bash

MONTH_YEAR=`date +"%b_%Y"`
dldir="$HOME/${MONTH_YEAR}"

[ ! -d "$dldir" ] && mkdir -p "$dldir"

TODAY_DATE=`date +"%d_%m_%Y"`

PROJECT_NAME=${PROJECT_NAME}
TYPE="prod"
BACKUP_FILE_NAME="${PROJECT_NAME}_${TYPE}_db_${TODAY_DATE}.sql"

sudo mysqldump -h ${DB_HOST} -u${DB_USER} -p${DB_PASSWORD} --set-gtid-purged=OFF --column-statistics=0 ${DB_NAME} | gzip -c > /$dldir/${BACKUP_FILE_NAME}
#mysqldump -h ${DB_HOST} -u ${DB_USER} -p${DB_PASS} ${DB_NAME} > /home/$USER/${BACKUP_FILE_NAME}
aws s3 mv /home/$USER/$dldir/${BACKUP_FILE_NAME} s3://${S3_BUCKET_NAME}