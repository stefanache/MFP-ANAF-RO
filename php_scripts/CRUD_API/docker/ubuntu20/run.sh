#!/bin/bash
echo "================================================"
echo " Ubuntu 20.04 (PHP 7.4)"
echo "================================================"

echo -n "[1/4] Starting MySQL 8.0 ........ "
# make sure mysql can create socket and lock
mkdir -p /var/run/mysqld && chmod 777 /var/run/mysqld
# run mysql server
nohup mysqld > /root/mysql.log 2>&1 &
# wait for mysql to become available
while ! mysqladmin ping -hlocalhost >/dev/null 2>&1; do
    sleep 1
done
# create database and user on mysql
mysql -u root >/dev/null << 'EOF'
CREATE DATABASE `php-crud-api` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
CREATE USER 'php-crud-api'@'localhost' IDENTIFIED WITH MYSQL_NATIVE_PASSWORD BY 'php-crud-api';
GRANT ALL PRIVILEGES ON `php-crud-api`.* TO 'php-crud-api'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;
EOF
echo "done"

echo -n "[2/4] Starting PostgreSQL 12.2 .. "
# ensure statistics can be written
mkdir /var/run/postgresql/10-main.pg_stat_tmp/ && chmod 777 /var/run/postgresql/10-main.pg_stat_tmp/
# run postgres server
nohup su - -c "/usr/lib/postgresql/12/bin/postgres -D /etc/postgresql/12/main" postgres > /root/postgres.log 2>&1 &
# wait for postgres to become available
until su - -c "psql -U postgres -c '\q'" postgres >/dev/null 2>&1; do
   sleep 1;
done
# create database and user on postgres
su - -c "psql -U postgres >/dev/null" postgres << 'EOF'
CREATE USER "php-crud-api" WITH PASSWORD 'php-crud-api';
CREATE DATABASE "php-crud-api";
GRANT ALL PRIVILEGES ON DATABASE "php-crud-api" to "php-crud-api";
\c "php-crud-api";
CREATE EXTENSION IF NOT EXISTS postgis;
\q
EOF
echo "done"

echo -n "[3/4] Starting SQLServer 2019 ... "
# run sqlserver server
nohup /opt/mssql/bin/sqlservr --accept-eula > /root/mssql.log 2>&1 &
# create database and user on sql server
/opt/mssql-tools/bin/sqlcmd -l 30 -S localhost -U SA -P sapwd123! >/dev/null << 'EOF'
CREATE DATABASE [php-crud-api]
GO
CREATE LOGIN [php-crud-api] WITH PASSWORD=N'php-crud-api', DEFAULT_DATABASE=[php-crud-api], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
USE [php-crud-api]
GO
CREATE USER [php-crud-api] FOR LOGIN [php-crud-api] WITH DEFAULT_SCHEMA=[dbo]
exec sp_addrolemember 'db_owner', 'php-crud-api';
GO
exit
EOF
echo "done"

echo -n "[4/4] Cloning PHP-CRUD-API v2 ... "
# install software
if [ -d /php-crud-api ]; then
  echo "skipped"
else
  git clone --quiet https://github.com/mevdschee/php-crud-api.git
  echo "done"
fi

echo "------------------------------------------------"

# run the tests
cd php-crud-api
php test.php
