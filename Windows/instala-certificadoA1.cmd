@echo off
cls
echo ####################################################################################
echo Instala certificado digital A1
echo CONNECTIVA REDES DE COMPUTADORES
echo (35)3822-4271
echo "@dnat"
echo ####################################################################################

certutil -f -user -p "123456" -importpfx ".\certificado.pfx"
