#!/bin/bash

# Prompt the user for input
echo "Enter the value for PG_DB_HOST:"
read PG_DB_HOST
echo "Enter the value for PG_DB_USER:"
read PG_DB_USER
echo "Enter the value for PG_DB_PASSWORD:"
read PG_DB_PASSWORD
echo "Enter the value for PG_DB_NAME:"
read PG_DB_NAME
echo "Enter the value for S3_BUCKET_NAME:"
read S3_BUCKET_NAME
echo "Enter the value for PROJECT_NAME:"
read PROJECT_NAME

# Export the variables
export PG_DB_HOST=$PG_DB_HOST
export PG_DB_USER=$PG_DB_USER
export PG_DB_PASSWORD=$PG_DB_PASSWORD
export PG_DB_NAME=$PG_DB_NAME
export S3_BUCKET_NAME=$S3_BUCKET_NAME
export PROJECT_NAME=$PROJECT_NAME

# Save the variables to a file
ENV_FILE="pgsql_saved_vars.sh"
echo "export PG_DB_HOST=$PG_DB_HOST" > $ENV_FILE
echo "export PG_DB_USER=$PG_DB_USER" >> $ENV_FILE
echo "export PG_DB_PASSWORD=$PG_DB_PASSWORD" >> $ENV_FILE
echo "export PG_DB_NAME=$PG_DB_NAME" >> $ENV_FILE
echo "export S3_BUCKET_NAME=$S3_BUCKET_NAME" >> $ENV_FILE
echo "export PROJECT_NAME=$PROJECT_NAME" >> $ENV_FILE

# Confirm the variables are set
echo "The variables have been set and saved to $ENV_FILE"
echo "You can restore these variables by running: source $ENV_FILE"

# Display the exported variables
echo "The current environment variables are:"
echo "PG_DB_HOST=$PG_DB_HOST"
echo "PG_DB_USER=$PG_DB_USER"
echo "PG_DB_PASSWORD=$PG_DB_PASSWORD"
echo "PG_DB_NAME=$PG_DB_NAME"
echo "S3_BUCKET_NAME=$S3_BUCKET_NAME"
echo "PROJECT_NAME=$PROJECT_NAME"
