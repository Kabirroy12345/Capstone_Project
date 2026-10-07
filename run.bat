@echo off
title HridyaVayu - AI-Powered Smart Asthma Care System
color 0B
echo ======================================================================
echo   HridyaVayu (HridyaVayu): AI-Powered Smart Asthma Care System
echo   Capstone Project Phase - 1  ^|  Group - 147
echo   Supervised by: Dr. Ajeet Singh
echo ======================================================================
echo   Team Members:
echo     - Pulkit Agrawal     (23BCE10735) - Backend ^& Live API Telemetry Lead
echo     - Kabir Roy          (23BCE10815) - ML Prediction ^& Safety Rails Lead
echo     - Parshv Keyur Modi  (23BCE10807) - Data, Feature Eng ^& Training Lead
echo     - Snehal Baranwal    (23BCE10479) - Frontend Presentation Lead
echo     - Snehil Priyam      (23BCE11200) - Capstone Documentation Lead
echo ======================================================================
echo.

cd /d "%~dp0"

set "PY_EXE=python"
if exist ".\venv\Scripts\python.exe" (
    set "PY_EXE=.\venv\Scripts\python.exe"
) else if exist "C:\Users\HP\AppData\Local\Programs\Python\Python311\python.exe" (
    set "PY_EXE=C:\Users\HP\AppData\Local\Programs\Python\Python311\python.exe"
)

echo [1] Launching HridyaVayu Web Portal in default browser...
start "" http://127.0.0.1:7860

echo [2] Starting Flask REST & Neuro-Symbolic Inference Engine...
echo     Server listening at: http://127.0.0.1:7860
echo     Press Ctrl+C to stop the server.
echo.
"%PY_EXE%" app.py

pause
