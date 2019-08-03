:: Ekstrak file arsip rar/zip
:: Dibuat oleh: Andika Priyotama
:: https://github.com/sakitkepala

@echo off

SETX PATH "%PATH%;C:\Program Files\WinRAR" /M
unrar x D:\lokasi\file.rar D:\folder\tujuan\ekstrak\
pause
