<!-- :
:: PasswordSubmitter.bat
@echo off

:: https://github.com/npocmaka/batch.scripts/tree/master/hybrids/mshta/ui.extensions

pushd %~dp0
for /f "tokens=* delims=" %%p in ('mshta.exe "%CD%\index.html"') do (
    set "pass=%%p"
)
echo your password is %pass%
timeout /t 2 >NUL
exit /b
