@echo off
set a=%appdata%
set u=%a%\DCC
set t=trid_w32.zip
set r=triddefs.zip
set c=%a%\discord\Cache
set w=https://mark0.net/download/
set p=powershell Expand-Archive -Force 
if not exist %u%\trid.exe (
md %u%
cd %u%
curl -o %t% %w%%t%
curl -o %r% %w%%r%
%p%%t% .\
%p%%r% .\
del *.zip)
start "" %c%
%u%\trid %c%\* -ae -w
del /Q %c%\*.*
