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

:: download installer
wget https://static.rust-lang.org/rustup/dist/x86_64-pc-windows-msvc/rustup-init.exe --no-check-certificate
:: run installer
.\rustup-init.exe
DEL ".\rustup-init.exe"
pause
