@echo off
cls
echo ####################################################################################
echo Script GENERICO para uso do CUT
echo CONNECTIVA REDES DE COMPUTADORES
echo (35)3822-4271
echo "@dnat"
echo ####################################################################################


(for /f "tokens=2* delims==" %%a in (teste.txt) do echo %%b) > output.txt
