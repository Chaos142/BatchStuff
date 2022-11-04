REM Deletes all of the files in the AppData folder in case deleting the %username% folder doesn't work
cd C:\Users\1651176\AppData
del Roaming /q
del Local /q
del LocalLow /q
REM Deletes the %username% folder
del C:\Users\%username% /q
