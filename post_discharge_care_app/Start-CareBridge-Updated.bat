@echo off
title CareBridge Updated
cd /d "%~dp0"
set PORT=5001
for /f "tokens=5" %%P in ('netstat -ano ^| findstr ":5001" ^| findstr "LISTENING"') do taskkill /PID %%P /F >nul 2>&1
timeout /t 1 /nobreak >nul
echo.
echo Starting the updated CareBridge app...
echo Open http://127.0.0.1:5001 in your browser.
echo Keep this window open while you use CareBridge.
echo.
start "" http://127.0.0.1:5001
.venv\Scripts\python.exe app.py
pause
