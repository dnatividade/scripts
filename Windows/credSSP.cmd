@echo off
cls
echo ##################################################################
echo Corrige temporariamente erro cred SSP no Windows 10 para acesso remoto
echo CONNECTIVA REDES DE COMPUTADORES
echo (35)3822-4271
echo "@dnat"
echo ##################################################################
echo.

reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\CredSSP\Parameters" /f /v AllowEncryptionOracle /t REG_DWORD /d 2

exit 0
