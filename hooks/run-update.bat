@echo off
for /f "delims=" %%i in ('where git') do set GIT_PATH=%%i
set "GIT_BASH=%GIT_PATH:\cmd\git.exe=\bin\bash.exe%"

if exist "%GIT_BASH%" (
    "%GIT_BASH%" "%~dp0update-plugin-modules"
) else (
    echo Git Bash not found at: %GIT_BASH%
    echo Make sure Git is installed and try again.
)

pause