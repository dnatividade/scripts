@echo off

echo   # # # # # # # # # # # # # # # # # # # # # # #
echo   #        Fix para Microsoft Windows         #
echo   # Windows 10 lento ao mostrar pastas da rede#
echo   # ver: 1.0                                  #
echo   # # # # # # # # # # # # # # # # # # # # # # #
echo.
echo # # # # # # # # # # # # # # # # # # # # # # #
echo #   CONNECTIVA REDES DE COMPUTADORES LTDA   #
echo # # # # # # # # # # # # # # # # # # # # # # #
echo #       www.connectivaredes.com             #
echo # (35)3822 4271-suporte@connectivaredes.com #
echo # "@dnat"                                   #
echo # # # # # # # # # # # # # # # # # # # # # # #
echo.
echo.

echo ESSE COMANDO DEVE SER EXECUTADO COMO ADMINISTRADOR
echo.

REG ADD "HKCR\*\Shellex\PropertySheetHandlers\CryptoSignMenu" /v SuppressionPolicy /t REG_DWORD /d 1048576 /f
REG ADD "HKCR\*\Shellex\PropertySheetHandlers\{3EA48300-8CF6-101B-84FB-666CCB9BCD32}" /v SuppressionPolicy /t REG_DWORD /d 1048576 /f
REG ADD "HKCR\*\Shellex\PropertySheetHandlers\{883373C3-BF89-11D1-BE35-080036B11A03}" /v SuppressionPolicy /t REG_DWORD /d 1048576 /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\SCAPI" /v Flags /t REG_DWORD /d 1051650 /f

pause
exit 0
