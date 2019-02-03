@echo off

echo =======================
echo    Setting IP ^& DNS
echo        Lab D2K
echo.
echo  @sakitkepala (c) 2018
echo =======================

echo.
echo IP: 192.168.10.xxx
:masukkan
echo.
echo Masukkan 3 digit IP terakhir:
set /p IP_Addr=

if /i "%IP_Addr%" == "" (
    goto masukkan
)

echo.
echo -----------------------
echo IP yang akan dipasang:
echo 192.168.10.%IP_Addr%

echo.
pause

echo.
echo -----------------------------------------------------
echo Local Area Connection akan dipasang sebagai berikut:
echo IP address (static) : 192.168.10.%IP_Addr%
echo Subnet mask         : 255.255.252.0
echo Default gateway     : 192.168.10.254
echo Preferred DNS server: 192.168.10.254

:choice
echo.
echo Pasang?
set /p eksekusi= (y/n) 

if /i "%eksekusi%" == "" (
    goto choice
)

if /i "%eksekusi%" == "n" (
    REM echo Tidak
    goto tidak
)

if /i "%eksekusi%" == "y" (
    REM echo Ya
    goto ya
)

:tidak
goto akhir

:ya
REM echo.
REM echo Ya!
echo Sedang pasang IP, subnet mask, ^& default gateway . . .
netsh interface IP set address name="Local Area Connection" static 192.168.10.%IP_Addr% 255.255.252.0 192.168.10.254 1
echo DONE!
echo.
echo Sedang pasang preferred DNS . . .
netsh interface IP set DNS "Local Area Connection" static 192.168.10.254
echo DONE!

echo.
netsh interface IP show config

:akhir
echo.
echo ----------------------------------------------
echo Setting IP ^& DNS selesai
pause
