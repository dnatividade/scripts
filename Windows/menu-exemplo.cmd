@echo off
cls
echo ####################################################################################
echo Exemplo GENERICO de um MENU em batch
echo CONNECTIVA REDES DE COMPUTADORES
echo (35)3822-4271
echo "@dnat"
echo ####################################################################################

prompt $b

:INICIO
cls
echo # # # # # # # # #
echo # Programa MENU #
echo # # # # # # # # #
echo.
echo.

echo 0 - SAIR
echo 1 - CALCULADORA DO WINDOWS
echo 2 - BLOCO DE NOTAS
echo 3 - MENSAGEM ALEATORIA
echo 4 - RESERVADO
echo.
echo.
echo Escolha sua opcao:
set /p escolha=

if "%escolha%" == "0" goto sair
if "%escolha%" == "1" goto calculadora
if "%escolha%" == "2" goto bloco
if "%escolha%" == "3" goto mensagem
if "%escolha%" == "4" goto reservado

echo OPÇÃO INVÁLIDA! Tente novamente.
pause
goto INICIO

:calculadora
start calc
echo Calculadora aberta!
pause
goto INICIO

:bloco
start notepad
echo Bloco de notas aberto!
pause
goto INICIO

:mensagem
set /a aleatorio=%random% %% 3
if %aleatorio% == 0 echo "Mensagem Aleatoria 1: Sorria, voce esta aprendendo batch!"
if %aleatorio% == 1 echo "Mensagem Aleatoria 2: Nunca desista!"
if %aleatorio% == 2 echo "Mensagem Aleatoria 3: O ceu eh o limite!"
pause
goto INICIO

:reservado
echo Esta funcionalidade está reservada para futuras implementações.
pause
goto INICIO

:sair
echo Obrigado por usar o programa! Saindo...
pause
exit

