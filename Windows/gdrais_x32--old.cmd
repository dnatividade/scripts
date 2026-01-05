@echo off
cls
echo ####################################################################################
echo Script para chamar o GDRAIS antigo em PCs com Window 7 x32
echo CONNECTIVA REDES DE COMPUTADORES
echo (35)3822-4271
echo "@dnat"
echo ####################################################################################

start C:\"Program File"\Java\jre7\bin\javaw.exe -Duser.language=pt -Duser.region=BR -DsuppressSwingDropSupport=true -Djavax.net.ssl.trustStore=./cert/gdrais-client-producao.keystore -Xmx768m -cp .;./gdrais-gui.jar;./lib/* br.gov.serpro.gdrais.gui.gui.GuiLancador
