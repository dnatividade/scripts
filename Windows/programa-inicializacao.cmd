@echo off
cls
echo ################################################################
echo Configurar programa na inicialização do Windows 1.0 - 26/01/2015
echo CONNECTIVA REDES DE COMPUTADORES
echo (35)3822-4271
echo "@dnat"
echo ################################################################
echo.

echo Digite o programa que deseja colocar na inicializacao (caminho completo):
echo (EX.: C:\Windows\system32\calc.exe)
set /p programa=

echo.
echo Digite uma descricao rapido para o programa (maximo 20 carecteres):
echo (EX.: Calculadora)
set /p descricao=

echo Configurando Registro do Windows ...
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run" /v %descricao% /t REG_SZ /d %programa% /f

echo O Programa %programa% foi colocado na inicializacao com sucesso!
pause
REM exit
