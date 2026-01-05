@echo off
cls
echo ####################################################################################
echo Pega a data atual e exibe formatada: YYYY-MM-DD
echo CONNECTIVA REDES DE COMPUTADORES
echo (35)3822-4271
echo "@dnat"
echo ####################################################################################


FOR /F "tokens=1,2,3 delims=/ " %%a in ("%DATE%") do (
set DIA=%%a
set MES=%%b
set ANO=%%c
)

set FORMATO=%ANO%-%MES%-%DIA%

echo %FORMATO%

pause
