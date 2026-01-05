@echo off
cls
echo ####################################################################################
echo Script para teste e monitoramento continuo de Internet
echo CONNECTIVA REDES DE COMPUTADORES
echo (35)3822-4271
echo "@dnat"
echo ####################################################################################

set host=8.8.4.4
echo Monitorando a conexao com o host: %host%
echo Pressione Ctrl+C para parar.
echo.
ping -t %host%

