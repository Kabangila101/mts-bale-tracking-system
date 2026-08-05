@echo off
echo Stopping MTS Demo server (port 5050)...
set FOUND=0
for /f "tokens=5" %%p in ('netstat -ano ^| findstr ":5050" ^| findstr "LISTENING"') do (
    set FOUND=1
    taskkill /PID %%p /F
)
if "%FOUND%"=="0" (
    echo No server found listening on port 5050.
) else (
    echo Server stopped.
)
pause
