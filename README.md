# Tifosi

## What's this ?
Tifosi is a fictive restaurant who need a database to stock infos about products sell and clients purchase.

## Install the database in local

### Get files
First of all, download the three files in this repository :
1/ CEF-create-DB.sql
2/ CEF-tifosi-datas.sql
3/ backup_tifosi.sql

### Create Database
This project use MySQL.
On your favorite client, run the script in CEF-create-DB.sql
It will create a new database, a new user ( name : tifosi / password : tifosiCEF75?*49 ), and all tables needed in the database.

### Insert datas
Select the new created database named 'tifosi' (you just created it in the last step), and run into the script in CEF-tifosi-datas.sql
It will insert all test datas in the database.

### Your Database Tifosi is ready to use !
Have fun with it !

## If you did something you didn't have to...
You can use the script in backup_tifosi.sql to restore you database with datas if you did an error.
