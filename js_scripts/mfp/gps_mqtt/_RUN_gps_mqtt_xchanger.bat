@echo off
cls
start Chrome http://localhost:8686\gps_mqtt_xchanger.html
php -S localhost:8686
pause