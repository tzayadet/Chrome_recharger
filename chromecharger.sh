Add-Type -AssemblyName System.Windows.Forms
$wshell = New-Object -ComObject wscript.shell

while ($true) {
    # Activa la ventana cuyo título contenga "Chrome"
    if ($wshell.AppActivate("Chrome")) {
        Start-Sleep -Milliseconds 200
        [System.Windows.Forms.SendKeys]::SendWait("{F5}")
    }
    Start-Sleep -Seconds 2
}
