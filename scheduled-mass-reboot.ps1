Start-Sleep -Seconds 18000; #starts 5 hours after running the script
Get-Content -Path C:\posh\reboot.txt | 
where {test-connection $_ -quiet -count 2} | 
foreach {
write-host "restarting $_" -fore Green
Restart-Computer $_ -Force }
