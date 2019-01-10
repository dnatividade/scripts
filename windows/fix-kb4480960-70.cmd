@echo off

echo =========================
echo FIX KB4480960 e KB4480970
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

@pause