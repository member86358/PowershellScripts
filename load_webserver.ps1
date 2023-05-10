$wshell = New-Object -ComObject WScript.Shell  
For ($i=0; $i -le 100; $i++) {
    Start-Sleep -Milliseconds 20
    Write-Progress -Activity "Loading..." -Status "Brave Browser..." -PercentComplete $i
}
Start-Process -FilePath '"C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe"'  http://192.168.77.120/awp//intro.html
Start-Sleep -Seconds 2
$wshell.SendKeys('{F11}')
