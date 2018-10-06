@echo off
cls
echo #############################################################
echo Criacao automatica de usuarios no Windows 2k 1.0 - 26/01/2015
echo CONNECTIVA REDES DE COMPUTADORES
echo (35)3822-4271
echo #############################################################
echo.

echo Digite o prefixo dos usuarios:
set /p pf=

echo Digite o numero do primeiro usuario:
set /p ui=

echo Agora digite o numero do ultimo usuario:
set /p uf=

:inicio
if %ui% gtr %uf% GOTO final

echo Adicionando Usuario: %pf%%ui%…

net user /add %pf%%ui% Oc@2011

set /a ui=%ui% + 1
ping localhost -n 1 >nul
GOTO inicio

:final