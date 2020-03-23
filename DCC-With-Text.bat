@echo off
title Discord Cache Cleaner
if exist %userprofile%\DCC\trid.exe (goto setupdone)
echo Just setting up dependencies
cd %userprofile%
md DCC
cd %userprofile%\DCC
echo Downloading Trid
curl -o trid_w32.zip https://mark0.net/download/trid_w32.zip
echo Downloading Trid config
curl -o triddefs.zip https://mark0.net/download/triddefs.zip
echo Extracting Trid
powershell Expand-Archive -Force %userprofile%\DCC\trid_w32.zip %userprofile%\DCC
powershell Expand-Archive -Force %userprofile%\DCC\triddefs.zip %userprofile%\DCC
del %userprofile%\DCC\trid_w32.zip
del %userprofile%\DCC\triddefs.zip
cls
:setupdone
cd %APPDATA%\discord\Cache
start.
echo Finding file types and renaming them...
echo This could take some time but feel free to scroll through
%userprofile%\DCC\trid %APPDATA%\discord\Cache\* -ae >nul
cls
echo Continuing from this point will delete the cache
echo Feel free to close if you feel otherwise
pause
echo y | del %APPDATA%\discord\Cache\*.*
exit
