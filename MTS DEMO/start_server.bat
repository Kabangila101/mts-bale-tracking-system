@echo off
cd /d "%~dp0"
echo Starting MTS Demo server...
start "MTS Demo Server" cmd /k python app.py
