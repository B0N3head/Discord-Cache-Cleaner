@echo off
set u=%AppData%
set t=trid_w32.zip
set r=triddefs.zip
set w=https://mark0.net/download/
set c=%APPDATA%\discord\Cache
if exist "%u%\DCC\trid.exe" (goto d)
echo Downloading dependencies
cd %u%
md DCC
cd "%u%\DCC"
curl -o %t% %w%%t%
curl -o %r% %w%%r%
powershell Expand-Archive -Force %u%\DCC\%t% %u%\DCC
powershell Expand-Archive -Force %u%\DCC\%r% %u%\DCC
del "%u%\DCC\%t%"
del "%u%\DCC\%r%"
:d
cd "%c%"
cls
echo Converting...
start "" "%c%"
"%u%\DCC\trid" "%c%\*" -ae >nul
cls
echo Press any button to delete cache
pause
echo y | del "%c%\*.*"
