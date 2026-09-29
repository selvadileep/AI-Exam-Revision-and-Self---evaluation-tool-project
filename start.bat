@echo off
echo =========================================================================
echo   Starting AI Exam Revision & Self-Evaluation System (Full-Stack)
echo =========================================================================
echo.
echo [1/2] Launching FastAPI Backend on http://127.0.0.1:8000 ...
start "ExamRevise AI - Backend (FastAPI)" cmd /k "cd /d "%~dp0backend" && call .\venv\Scripts\activate.bat && python run.py"

timeout /t 3 /nobreak >nul

echo [2/2] Launching Vite Frontend on http://localhost:5173 ...
start "ExamRevise AI - Frontend (React)" cmd /k "cd /d "%~dp0frontend" && npm run dev"

timeout /t 2 /nobreak >nul
echo.
echo Opening browser to http://localhost:5173 ...
start http://localhost:5173

echo =========================================================================
echo   System running! Press any key or close this window.
echo =========================================================================
