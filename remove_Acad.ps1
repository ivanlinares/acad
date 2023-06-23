If (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))
 {
  Echo "This script needs to be run As Admin"
  Break
 }
Get-Item ${env:programfiles}\Autodesk* | Remove-Item -Force  
Get-Item ${env:programfiles}'\Common Files'\Autodesk* | Remove-Item -Force  
Get-Item ${env:programfiles(x86)}\Autodesk* | Remove-Item -Force  
Get-Item ${env:programfiles(x86)}'\Common Files'\Autodesk* | Remove-Item -Force  
Get-Item ${env:programdata}\Autodesk* | Remove-Item -Force  
Get-Item ${env:programdata}\FLEXnet* | Remove-Item -Force  
Get-Item ${env:appdata}\Autodesk* | Remove-Item -Force  
Get-Item ${env:localappdata}\Autodesk* | Remove-Item -Force  
Get-Item HKLM:\SOFTWARE\Autodesk | Remove-Item -Force -Verbose  
Get-Item HKCU:\SOFTWARE\Autodesk | Remove-Item -Force -Verbose  
Remove-Item -Path $env:TEMP\* -Recurse -Force -ErrorAction SilentlyContinue