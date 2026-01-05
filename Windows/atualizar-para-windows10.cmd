@echo off
cls
echo ####################################################################################
echo Script para atualizar para Windows 10
echo CONNECTIVA REDES DE COMPUTADORES
echo (35)3822-4271
echo "@dnat"
echo ####################################################################################

C:
cd  \
cd Windows\SoftwareDistribution\Download
del *.* /F /Q
cd \
cd Windows
wuauclt /updatenow
pause
