@echo off
@echo ����ன�� �ࠢ �ᯮ������ �ਯ⮢ PowerShell
powershell.exe -Command "Set-ExecutionPolicy Unrestricted"
cls
:g_menu
@echo ---------------------------------------------------
@echo 1. ��⠭���� �ணࠬ����� ���ᯥ祭��
@echo 2. ���� �ࠢ �ᯮ������ �ਯ⮢ PowerShell ��-㬮�砭��
@echo ---------------------------------------------------
set /p m=""
rem if %m%==1 Start /WAIT powershell.exe -File "SoftInstaller.ps1"
if %m%==1 powershell.exe -File "SoftInstaller.ps1"
if %m%==2 powershell.exe -Command "Set-ExecutionPolicy Restricted"
pause
