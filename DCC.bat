@echo off
title Discord Cache Cleaner
NET SESSION >nul 2>&1
IF %ERRORLEVEL% EQU 0 (
	rem a
	) else (   
	echo Run this as admin
	pause
	exit )
set u=%userprofile%
if exist %u%\DCC\trid.exe (goto setupdone)
echo Just setting up dependencies
cd %u%
md DCC
cd %u%\DCC
curl -o trid_w32.zip https://mark0.net/download/trid_w32.zip
curl -o triddefs.zip https://mark0.net/download/triddefs.zip
powershell Expand-Archive -Force %u%\DCC\trid_w32.zip %u%\DCC
powershell Expand-Archive -Force %u%\DCC\triddefs.zip %u%\DCC
del %u%\DCC\trid_w32.zip
del %u%\DCC\triddefs.zip
cls
setupdone
cd %APPDATA%\discord\Cache
start.
trid %APPDATA%\discord\Cache\* -ae >nul
echo Continuing will delete cache, feel free to close if otherwise
pause
del %APPDATA%\discord\Cache\*.*
exit