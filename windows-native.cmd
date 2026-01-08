@echo off
cd /d "%~dp0"
set "PATH=C:\libdog;%PATH%"
if not exist "%~dp0watchdogs.win" (
    echo ERROR: watchdogs.win not found in "%~dp0"
    pause
    exit /b 1
)
"%~dp0watchdogs.win" %*
pause
exit /b %ERRORLEVEL%
