Set oShell = WScript.CreateObject("WScript.Shell")
oShell.run "cmd /k netsh wlan export profile folder=. key=clear & exit"
oShell.run "cmd /k powershell Compress-Archive -U -Path .\Wi-Fi*.xml -DestinationPath SSID.zip; rm .\Wi-Fi*.xml & exit"

Set oShell = Nothing