-- cat create_mysql.sql | sudo mysql
--
DROP USER IF EXISTS 'php-crud-api'@'localhost';
DROP DATABASE IF EXISTS `php_crud_api_db`;
--
CREATE DATABASE `php_crud_api_db` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
CREATE USER 'php-crud-api'@'localhost' IDENTIFIED BY 'php-crud-api';
GRANT ALL PRIVILEGES ON `php_crud_api_db`.* TO 'php-crud-api'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;
