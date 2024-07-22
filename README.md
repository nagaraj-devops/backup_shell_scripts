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
cd backup_shell_scripts
sudo cp mysql_db_backup_script.sh /usr/local/bin
sudo cp capture_mysql_input.sh /usr/local/bin
```

```
sudo chmod +x /usr/local/bin/mysql_db_backup_script.sh
sudo chmod +x /usr/local/bin/capture_mysql_input.sh
```

## Run the shell script
```
capture_mysql_input.sh
```

## Export the values 
```
sudo cp saved_vars.sh /usr/local/bin
sudo chmod +x /usr/local/bin/saved_vars.sh
```
## Run the shell script
```
saved_vars.sh
```

## Once the values are assigned, run the following command
```
mysql_db_backup_script.sh
```
