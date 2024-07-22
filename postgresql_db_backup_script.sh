#!/bin/bash

MONTH_YEAR=`date +"%b_%Y"`
dldir="$HOME/${MONTH_YEAR}"

[ ! -d "$dldir" ] && mkdir -p "$dldir"

TODAY_DATE=`date +"%d_%m_%Y"`

PROJECT_NAME=${PROJECT_NAME}
TYPE="prod"
BACKUP_FILE_NAME="${PROJECT_NAME}_${TYPE}_db_${TODAY_DATE}.pgsql"

sudo PGPASSWORD=${PG_DB_PASSWORD} pg_dump -p 5432 -h ${PG_DB_HOST} -U ${PG_DB_USER} ${PG_DB_NAME} > $dldir/${BACKUP_FILE_NAME}
aws s3 mv $dldir/${BACKUP_FILE_NAME} s3://${S3_BUCKET_NAME}
