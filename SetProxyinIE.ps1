$regKey="HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings"
set-ItemProperty -path $regKey ProxyServer -value 'proxy.daalitoy.com:8080'
set-ItemProperty -path $regKey ProxyEnable   -value 1
Set-ItemProperty -path $regKey ProxyOverride -value '<local>*.test1.*;*test2*;*test3*.*;101.*'

set-location "HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings" 
set-location ZoneMap\Domains 
new-item BRAD-SERVER 
set-location BRAD-SERVER 
new-itemproperty . -Name http -Value 2 -Type DWORD