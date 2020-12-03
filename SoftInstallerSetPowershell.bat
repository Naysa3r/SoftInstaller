@echo off
@echo Настройка прав исполнения скриптов PowerShell
powershell.exe -Command "Set-ExecutionPolicy Unrestricted"
cls
:g_menu
@echo ---------------------------------------------------
@echo 1. Установка программного обеспечения
@echo 2. Сброс прав исполнения скриптов PowerShell по-умолчанию
@echo ---------------------------------------------------
set /p m=""
rem if %m%==1 Start /WAIT powershell.exe -File "SoftInstaller.ps1"
if %m%==1 powershell.exe -File "SoftInstaller.ps1"
if %m%==2 powershell.exe -Command "Set-ExecutionPolicy Restricted"
pause
