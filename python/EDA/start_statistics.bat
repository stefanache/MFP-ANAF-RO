@echo off
setlocal
cls



REM echo Python 3.10.10
REM python -V

cd C:\development\python\tenis_planet_predictor
del __pycache__
REM cd
REM dir .\Files_for_Prediction_Model\*.xlsx |more

REM conda create -n myEnv python=3.10.10
REM conda env list |more
REM conda info --envs |more
conda activate myEnv |more
REM pause
REM python -m pip install --upgrade pip |more

echo Installpandas and/with/including deps...

:: Verifica daca python e instalat
python --version >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo The Python isn't installed or not in PATH.
    pause
    exit /b 1
)

:: Verifica daca pip e instalat
pip --version >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo The pip isn't installed or not in PATH.
    pause
    exit /b 1
)

:: install pandas
rem pip install pandas[all] |more
REM conda install pandas[all]  -y
rem pip install pandas[excel] openpyxl --force |more
rem pip install openpyxl |more
REM conda install openpyxl |more
REM pip uninstall seaborn
rem pip install seaborn |more
REM conda install seaborn |more
REM conda install statistics |more
rem pip list |more
REM conda list |more

IF %ERRORLEVEL% EQU 0 (
    echo pandas was installed with succes.
) ELSE (
    echo One error occoured to install pandas.
)
echo Unzip the archive:

:: The archive file which need to be unzipped
set "zipfile=Files_for_Prediction_Model.zip"

:: Get the filename withoutextension
for %%F in ("%zipfile%") do set "destfolder=%%~nF"

:: If the destination-folder exist then will be delete it
if exist "%destfolder%" (
    echo Delete the existent folder: %destfolder%
    rmdir /s /q "%destfolder%"
)

:: Re-create the destination folder
mkdir "%destfolder%"

:: Unzip the archive using PowerShell
powershell -Command "Expand-Archive -Path '%zipfile%' -DestinationPath '%destfolder%'"

echo Unzip completed in the folder: %destfolder%

chcp 65001
python tennis_statistics.py |more

pause

conda deactivate

echo Bye!

pause