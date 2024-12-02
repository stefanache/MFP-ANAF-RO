@echo off
cls

rem echo eu pot lucra offline dar eu prefer varianta unui webserver local:
ECHO LANSEZ WEBSERVER-UL(MINIMIZATI FEREASTRA CONSOLEI...NU O INCHIDETI)
python -m http.server 8000
pause