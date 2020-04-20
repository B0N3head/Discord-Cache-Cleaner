@echo off
title Discord Cache Cleaner
if exist %userprofile%\DCC\trid.exe (goto d)
echo.
echo Downloading dependencies
cd %userprofile%
md DCC
cd %userprofile%\DCC
curl -o trid_w32.zip https://mark0.net/download/trid_w32.zip
curl -o triddefs.zip https://mark0.net/download/triddefs.zip
echo Extracting dependencies
powershell Expand-Archive -Force %userprofile%\DCC\trid_w32.zip %userprofile%\DCC
powershell Expand-Archive -Force %userprofile%\DCC\triddefs.zip %userprofile%\DCC
echo Cleaning trash
del %userprofile%\DCC\trid_w32.zip
del %userprofile%\DCC\triddefs.zip
:d
cd %APPDATA%\discord\Cache
cls
echo.
echo Wroking on renaming apropiate file types
start.
%userprofile%\DCC\trid %APPDATA%\discord\Cache\* -ae >nul
cls
echo.
echo Press any button to delete cache, otherwise feel free to close this window
echo.
pause
echo y | del %APPDATA%\discord\Cache\*.*
