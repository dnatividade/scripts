@echo off
cls
echo ####################################################################################
echo Desativando serviços desnecessários do Windows (Win8 e Win10). . . Versao 1.0
echo CONNECTIVA REDES DE COMPUTADORES
echo (35)3822-4271
echo ####################################################################################
echo.
echo.
echo.

echo Desativando:
echo ------------
echo.

echo Auxiliar de IP
net stop iphlpsvc
sc config iphlpsvc start= disabled

echo Cliente de Rastreamento de Link Distribuido
net stop TrkWks
sc config TrkWks start= disabled

echo Central de Seguranca
net stop wscsvc
sc config wscsvc start= disabled

echo Servico Auxiliar de Compatibilidade de Programas
net stop PcaSvc
sc config PcaSvc start= disabled

echo Servico de Politica de Diagnostico
net stop DPS
sc config DPS start= disabled

rem echo Servico de Rastreamento de Diagnostico
rem sc config iphlpsvc start= disabled

echo Servico Windows Defender
net stop WdNisSvc
sc config WdNisSvc start= disabled

rem echo Servico de Relatorio de Erro
rem sc config WerSvcGroup start= disabled


pause
