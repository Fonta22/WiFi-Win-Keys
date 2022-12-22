dim NIC1, Nic, StrIP, CompName
Set NIC1 = GetObject("winmgmts:").InstancesOf("Win32_NetworkAdapterConfiguration")

'Public
Dim oHTTP

On Error Resume Next
Set oHTTP = CreateObject("MSXML2.XMLHTTP")
oHTTP.open "GET", "http://ifconfig.io/ip", False
oHTTP.send

PublicIP = oHTTP.responseText

PublicIP = Replace(PublicIP, vbCr, "")
PublicIP = Replace(PublicIP, vbLf, "")

Set oHTTP = Nothing

If Err.Number <> 0 Then
  WScript.Echo "Error in DoStep1: " & Err.Description
  Err.Clear
End If

For Each Nic in NIC1
  If Nic.IPEnabled Then
    'Private
    PrivateIP = Nic.IPAddress(0)

    'Computer Name
    Set WshNetwork = WScript.CreateObject("WScript.Network")
    CompName = WshNetwork.Computername
    
    'Write File
    Set fso = WScript.CreateObject("Scripting.FileSystemObject")
    Set KO = fso.OpenTextFile("ip.prop", 8, True)

    KO.WriteLine("public=" & PublicIP)
    KO.WriteLine("private=" & PrivateIP)
    KO.WriteLine("computerName=" & CompName)

    Set fso = Nothing
    wscript.quit
  End if
Next