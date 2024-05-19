
@echo off

:: check admin 
net session >nul 2>&1
if %errorLevel% == 0 (
	goto Admin
)

:: UAC Prompt 
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
set params = %*:"="
echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

"%temp%\getadmin.vbs"
del "%temp%\getadmin.vbs"
exit /B

:Admin
pushd "%CD%"
CD /D "%~dp0"

:: upgrade installed apps
choco upgrade all -y
