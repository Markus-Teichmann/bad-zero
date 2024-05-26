Set clArgs = WScript.Arguments.Named
Set Shell = CreateObject("WScript.Shell")
Shell.Run chr(34) & clArgs.Item("BatFile") & chr(34), 0
Set Shell = Nothing