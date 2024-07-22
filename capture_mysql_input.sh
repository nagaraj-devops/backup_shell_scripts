#!/bin/bash

# Prompt the user for input
echo "Enter the value for DB_HOST:"
read DB_HOST
echo "Enter the value for DB_USER:"
read DB_USER
echo "Enter the value for DB_PASSWORD:"
read DB_PASSWORD
echo "Enter the value for DB_NAME:"
read DB_NAME
echo "Enter the value for S3_BUCKET_NAME:"
read S3_BUCKET_NAME
echo "Enter the value for PROJECT_NAME:"
read PROJECT_NAME

# Export the variables
export DB_HOST=$DB_HOST
export DB_USER=$DB_USER
export DB_PASSWORD=$DB_PASSWORD
export DB_NAME=$DB_NAME
export S3_BUCKET_NAME=$S3_BUCKET_NAME
export PROJECT_NAME=$PROJECT_NAME

# Save the variables to a file
ENV_FILE="saved_vars.sh"
echo "export DB_HOST=$DB_HOST" > $ENV_FILE
echo "export DB_USER=$DB_USER" >> $ENV_FILE
echo "export DB_PASSWORD=$DB_PASSWORD" >> $ENV_FILE
echo "export DB_NAME=$DB_NAME" >> $ENV_FILE
echo "export S3_BUCKET_NAME=$S3_BUCKET_NAME" >> $ENV_FILE
echo "export PROJECT_NAME=$PROJECT_NAME" >> $ENV_FILE

# Confirm the variables are set
echo "The variables have been set and saved to $ENV_FILE"
echo "You can restore these variables by running: source $ENV_FILE"

# Display the exported variables
echo "The current environment variables are:"
echo "DB_HOST=$DB_HOST"
echo "DB_USER=$DB_USER"
echo "DB_PASSWORD=$DB_PASSWORD"
echo "DB_NAME=$DB_NAME"
echo "S3_BUCKET_NAME=$S3_BUCKET_NAME"
echo "PROJECT_NAME=$PROJECT_NAME"
