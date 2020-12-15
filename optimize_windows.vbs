Set WshShell = CreateObject("WScript.Shell" ) 
WshShell.Run """C:\Dev\Scripts\clearAll.bat""", 0
WshShell.Run """C:\Dev\Scripts\runTimerTool.bat""", 0
Set WshShell = Nothing