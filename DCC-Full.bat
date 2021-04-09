@echo off
title Discord Cache Cleaner
if exist %AppData%\DCC\trid.exe (goto d)
echo.
echo Downloading dependencies
cd /D %AppData%
md DCC
cd %AppData%\DCC
curl -o trid_w32.zip https://mark0.net/download/trid_w32.zip
curl -o triddefs.zip https://mark0.net/download/triddefs.zip
echo Extracting dependencies
powershell Expand-Archive -Force %AppData%\DCC\trid_w32.zip %AppData%\DCC
powershell Expand-Archive -Force %AppData%\DCC\triddefs.zip %AppData%\DCC
echo Cleaning trash
del %AppData%\DCC\trid_w32.zip
del %AppData%\DCC\triddefs.zip
:d
cd %APPDATA%\discord\Cache
cls
echo.
echo Converting Whole Cache to Images
start %APPDATA%\discord\Cache
%AppData%\DCC\trid %APPDATA%\discord\Cache\* -ae >nul
cls
echo.
echo Press any button to delete cache, otherwise feel free to close this window
echo.
pause
echo y | del %APPDATA%\discord\Cache\*.*
