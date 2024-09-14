@echo off
cls
echo https://github.com/stefanache/MFP-ANAF-RO/blob/main/php_scripts/CRUD_API/ReadMe.md
php -v |More
composer update |more
composer install --ignore-platform-req=ext-mbstring|more
start Chrome   http://localhost:8080 |more

echo Asteptati putin si apoi Dati Refresh daca browserul nu incarca continutul....
start Chrome   http://localhost:8080/api.php/records/posts/1 |more

echo minimizati fereastra dar nu o inchideti pt a lasa webserver-ul incorporat al PHP-ului, in functiune...
php -S localhost:8080 |more
  
pause 