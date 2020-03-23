@echo off
title Discord Cache Cleaner
set u=%userprofile%
if exist %u%\DCC\trid.exe (goto setupdone)
echo Just setting up dependencies
cd %u%
md DCC
cd %u%\DCC
echo Downloading Trid
curl -o trid_w32.zip https://mark0.net/download/trid_w32.zip
echo Downloading Trid config
curl -o triddefs.zip https://mark0.net/download/triddefs.zip
echo Extracting Trid
powershell Expand-Archive -Force %u%\DCC\trid_w32.zip %u%\DCC
powershell Expand-Archive -Force %u%\DCC\triddefs.zip %u%\DCC
del %u%\DCC\trid_w32.zip
del %u%\DCC\triddefs.zip
cls
:setupdone
cd %APPDATA%\discord\Cache
start.
echo Finding file types and renaming them...
echo This could take some time but feel free to scroll through
%u%\DCC\trid %APPDATA%\discord\Cache\* -ae >nul
cls
echo Continuing from this point will delete the cache
echo Feel free to close if you feel otherwise
pause
echo y | del %APPDATA%\discord\Cache\*.*
exit
