# Steps to take database backup of Mysql Database
Shell Scripts to take backup

## take a clone of git repo
- log in to your aws ssh
- take a clone of git repo
```
git clone https://github.com/nagaraj-devops/backup_shell_scripts.git
```
## Run the below commands

```
sudo cp mysql_db_backup_script.sh /usr/local/bin
sudo cp for_mysql_contants.sh /usr/local/bin
```

```
sudo chmod +x /usr/local/bin/mysql_db_backup_script.sh
sudo chmod +x /usr/local/bin/for_mysql_contants.sh
```

## Check the for_mysql_constants.txt and change the values accordingly and run each line from the file

```
export DB_HOST='your_database_host'
export DB_USER='your_database_user'
export DB_PASSWORD='your_database_password'
export DB_NAME='your_database_name'
export S3_BUCKET_NAME='your_s3_bucket_name'
export PROJECT_NAME='your_project_name'
```

## Once the values are assigned, run the following command
```
mysql_db_backup_script.sh
```
