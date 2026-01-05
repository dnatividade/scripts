@echo off
cls
echo ##############################################
echo Configura Hosts - Versao 2.0 - 09/12/2024
echo CONNECTIVA REDES DE COMPUTADORES
echo (35)3822-4271
echo "@dnat"
echo ##############################################
echo.
echo.

echo Configurando arquivo de host ...
echo.
echo Você precisa informar o nome do arquivo que contém os dados para o HOSTS.
echo Obs.: No arquivo devem estar IPs e hosts separados por espaço. Um por linha.
echo Ex.:
echo 10.10.10.57 srvcontab
echo 10.11.0.3 www3
echo 10.0.254.1 webproxy
echo.
echo Digite o nome do arquivo (com extensão):
set /p arquivo=

:: Verifica se o arquivo informado existe
if not exist "%arquivo%" (
    echo ERRO: O arquivo "%arquivo%" não foi encontrado!
    pause
    goto FIM
)

:: Verifica se o arquivo de hosts do sistema está acessível
if not exist "%windir%\System32\drivers\etc\hosts" (
    echo ERRO: Arquivo de hosts do sistema não encontrado!
    pause
    goto FIM
)

:: Adiciona o conteúdo ao arquivo de hosts
echo Adicionando conteúdo ao arquivo de hosts do sistema...
type "%arquivo%" >> "%windir%\System32\drivers\etc\hosts"

:: Verifica se o comando foi executado com sucesso
if %errorlevel% equ 0 (
    echo Processo concluído com sucesso!
    goto FIM
) else (
    echo Processo não realizado! ERRO #: %errorlevel%
    goto FIM
)

:FIM
echo Operação finalizada.
pause

