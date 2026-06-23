# RUTINE — Crear tarea programada 5:30 AM
$bat = "C:\Users\isaiv\OneDrive\Escritorio\rutine\rutine\abrir-rutine.bat"

$action  = New-ScheduledTaskAction -Execute "cmd.exe" -Argument "/c `"$bat`""
$trigger = New-ScheduledTaskTrigger -Daily -At "05:30"
$settings = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries

Register-ScheduledTask -TaskName "RUTINE 5:30AM" -Action $action -Trigger $trigger -Settings $settings -Force

Write-Host "LISTO - RUTINE se abrira a las 5:30 AM cada dia" -ForegroundColor Green
pause
