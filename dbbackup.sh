#!/bin/bash

# Database credentials
user="niyati"
password="qwerty"
#host="34.212.26.187"
db_name="it610db"

# Other options
backup_path="/home/dbbackup/"
date=$(date +"%d-%b-%Y")

# Set default file permissions
umask 177

# Dump database into SQL file
mysqldump --user=$user --password=$password --host=$host $db_name > $backup_path/$db_name-$date.sql

# Delete files older than 7 days
find $backup_path/* -mtime +7 -exec rm {} \;