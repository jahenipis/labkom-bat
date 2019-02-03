:: Dibuat oleh: Pak Abdussalam

@echo off

net start w32time
w32tm /config /update /manualpeerlist:"192.168.10.251"
w32tm /config /update
net stop w32time && net start w32time
w32tm /query /peers
w32tm /resync /force
pause
