@echo off
REM Get the directory where this .bat file is located
cd /d %~dp0

REM Launch a new cmd window and run the Python script, then wait for user input
start cmd /k "python run_me.py & echo. & echo Press any key to exit... & pause >nul"
