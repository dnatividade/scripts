@echo off

echo =========================
echo FIX KB4480960 e KB4480970
echo Date: 2019-01-09
echo =========================
echo.

reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\system /v LocalAccountTokenFilterPolicy /t REG_DWORD /d 1 /f
echo.
echo.

echo *****************************
echo Reboot o sistema para aplicar
echo *****************************
echo.
echo.
rem SOURCE: https://borncity.com/win/2019/01/09/netzwerk-issues-with-updates-kb4480970-and-kb4480960/

@pause
