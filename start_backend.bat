@echo off
echo ========================================================
echo   Starting ExamRevise AI - FastAPI Backend (Port 8000)
echo ========================================================
cd /d "%~dp0backend"
call .\venv\Scripts\activate.bat
python run.py
pause
