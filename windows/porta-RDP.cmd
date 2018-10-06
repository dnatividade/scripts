@echo off
cls
echo #######################################
echo Configura Porta RDP 1.0 - 09/02/2017
echo CONNECTIVA REDES DE COMPUTADORES
echo (35)3822-4271
echo #######################################

echo Configurando Registro do Windows ...
echo.
echo ALterando a Porta 3389/TCP para 1234/TCP
echo (configure a porta conforme a necessidade, alterando
echo  a linha abaixo de 00001234 para a porta desejada)
REG ADD "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\TerminalServer\WinStations\RDP-Tcp" /v PortNumber /t REG_DWORD /d 00001234 /f

echo.
echo Porta alterada com sucesso! Renicie o computador!!!
echo.
pause

