@echo off
cls
echo ####################################################################################
echo Instala o Telnet Client
echo CONNECTIVA REDES DE COMPUTADORES
echo (35)3822-4271
echo "@dnat"
echo ####################################################################################

@echo off
:: Verifica privilégios de administrador
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo ==========================================
    echo ERRO: Privilégio de administrador necessário.
    echo Clique com o botão direito neste arquivo e escolha:
    echo "Executar como Administrador".
    echo ==========================================
    pause
    exit /b
)

echo Privilegios de administrador detectados.
echo Instalando o cliente Telnet...
pkgmgr /iu:"TelnetClient"
pause


