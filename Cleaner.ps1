$logpath = "C:\Users\*\AppData\Local\UiPath\Logs"

#Delete logs older than 3 days

Get-ChildItem $logpath -Recurse -Include *_Terminal.log, *_VisionHost.log, *_Execution.log -force | where {$_.lastwritetime -lt (get-date).adddays(-3)} | Remove-Item -force 