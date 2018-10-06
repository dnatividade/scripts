@echo off
cls
echo ##############################################
echo Configura Hosts - Versao 1.0 - 19/03/2015
echo CONNECTIVA REDES DE COMPUTADORES
echo (35)3822-4271
echo ##############################################
echo.
echo.

echo Configurando arquivo de host ...
echo.
echo Voce precisa informar o nome do arquivo que contem os arquivos com o HOSTS.
echo Obs.: no arquivo devem estar: IPs e hosts separados por espaco. Um em cada linha.
echo Ex.:
echo 10.10.10.57 srvcontab
echo 10.11.0.3 www3
echo 10.0.254.1 webproxy
echo.
echo.
echo Digite o nome do arquivo
set /p arquivo=

type %arquivo% >> %windir%\System32\drivers\etc\host
echo.
echo.

IF ERRORLEVEL 0 goto OK
IF ERRORLEVEL 1 goto FAL

:FAL
echo Processo nao realizado! ERRO #: %ERRORLEVEL%
goto FIM

:OK
echo Processo concluido com sucesso!
goto FIM


:FIM
echo #### %ERRORLEVEL% ####
pause
