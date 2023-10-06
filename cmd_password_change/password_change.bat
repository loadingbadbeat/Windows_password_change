@echo off
setlocal enabledelayedexpansion

rem Prompt the user to enter the new password
set /p "newpassword=Enter the new password: "

rem Use the "net user" command to change the password for the currently logged-in user
net user "%USERNAME%" %newpassword%

rem Check if the password change was successful
if %errorlevel% equ 0 (
    echo Password for your account (%USERNAME%) has been changed successfully.
) else (
    echo An error occurred while changing the password for your account (%USERNAME%).
)

endlocal
