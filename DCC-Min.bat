@echo off
set u=%appdata%\DCC
set t=trid_w32.zip
set r=triddefs.zip
set w=https://mark0.net/download/
set c=%appdata%\discord\Cache
set p=powershell Expand-Archive -Force
if exist %u%\trid.exe goto d
cd /D %AppData%
md DCC
cd %u%
curl -o %t% %w%%t%
curl -o %r% %w%%r%
%p% %u%\%t% %u%
%p% %u%\%r% %u%
del %u%\%t%
del %u%\%r%
:d
start %c%
%u%\trid %c%\* -ae >nul
pause
del /Q %c%\*.*
