@echo off
cls
echo ####################################################################################
echo Exibir ou Ocultar arquivos ocultos e protegidos pelo sistema Versao 1.0 - 13/02/2015
echo CONNECTIVA REDES DE COMPUTADORES
echo (35)3822-4271
echo ####################################################################################

echo.
echo Deseja EXIBIR ou OCULTAR os arquivos ocultos e protegidos do Windows?
echo (digite E para exibir ou O para ocultar)
set /p opcao=
echo.
if %opcao% == E (
 echo Exibindo arquivos ocultos ...
 echo.
 reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v Hidden /t REG_DWORD /d "1" /f
 reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowSuperHidden /t REG_DWORD /d "1" /f
 reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v SuperHidden /t REG_DWORD /d "1" /f
) else (
 echo Ocultando arquivos ...
 echo.
 reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v Hidden /t REG_DWORD /d "2" /f
 reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowSuperHidden /t REG_DWORD /d "0" /f
 reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v SuperHidden /t REG_DWORD /d "1" /f
)
echo.
echo Configurado com sucesso!
echo Atualize a janela do Windows Explorer para aplicar as novas configuracoes!
pause