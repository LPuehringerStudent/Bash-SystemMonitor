@echo off
:loop
cls
echo System Monitor
echo ====================
echo.
echo CPU Usage:
wmic cpu get loadpercentage
echo.
echo Memory Usage:
wmic os get freephysicalmemory,totalvisiblememorysize /format:value
echo.
echo Disk Usage:
wmic logicaldisk get size,freespace,caption
echo.
echo Press any key to refresh or 'Q' to quit...
set /p key=""
if /i "%key%"=="q" goto :exit
goto :loop
:exit
exit
