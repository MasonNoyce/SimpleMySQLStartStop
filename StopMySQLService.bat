@echo off
:: Batch script to run as administrator

:: Check if the script is already running as administrator
>nul 2>&1 net session || (
    echo Requesting administrative privileges...
    :: Prompt for administrator privileges
    cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul || (
        echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
        echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
        "%temp%\getadmin.vbs"
        exit /B
    )
)

:: Your main script goes here
echo Running with administrator privileges!
net stop mysql80
