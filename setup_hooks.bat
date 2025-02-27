@echo off
setlocal

REM Getting the root folder of repository
for /f "delims=" %%i in ('git rev-parse --show-toplevel') do set REPO_ROOT=%%i

REM Setup git to use hooks from folder hooks/
git config core.hooksPath "%REPO_ROOT%/hooks"

REM Create folder hooks if not exist
mkdir "%REPO_ROOT%\hooks" 2>nul

echo.
echo Git hooks directory has been set up!
echo.

REM Awaits any press before exit
echo Press any key to exit...
pause >nul