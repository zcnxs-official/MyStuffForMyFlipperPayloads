@echo off
setlocal enabledelayedexpansion

echo Scanning all drives for Windows Defender...

set "drive="

for %%D in (C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
    if exist %%D:\ (
        if exist "%%D:\Program Files\Windows Defender" (
            echo Windows Defender found on drive %%D:\
            set "drive=%%D:"
        ) else if exist "%%D:\ProgramData\Microsoft\Windows Defender" (
            echo Windows Defender found on drive %%D:\
            set "drive=%%D:"
        )
    )
)

echo Scan complete.
echo %drive% > "%temp%\defender_drive.txt"

pause
