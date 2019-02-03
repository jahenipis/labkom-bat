:: Dibuat oleh: Andika Priyotama
:: https://github.com/sakitkepala

@echo off

bcdedit /bootsequence {92f2f6f0-6aff-11e6-99c0-fc37d5bf0856} /addfirst
shutdown /r /t 0
