@echo off
cls
echo ####################################################################################
echo Script usado na manutenão preventiva da CONNECTIVA (obsoleto
echo CONNECTIVA REDES DE COMPUTADORES
echo (35)3822-4271
echo "@dnat"
echo ####################################################################################


rem -- Formata data e hora ------------------------------
FOR /F "tokens=1,2,3 delims=/ " %%a in ("%DATE%") do (
set DIA=%%a
set MES=%%b
set ANO=%%c
)

FOR /F "tokens=1,2,3 delims=:, " %%a in ("%TIME%") do (
set H=%%a
set M=%%b
set S=%%c
)

set HOJE=%ANO%_%MES%_%DIA%__%H%_%M%_%S%
rem echo %HOJE%
rem -- Formata data e hora ------------------------------

set LOG_MP=%systemdrive%\CONNECTIVA\FMA\LOGS\mp.txt

echo "# # # # # # # # # # # # # # # # # # # #"
echo "# CONNECTIVA REDES DE COMPUTADORES    #"
echo "#                                     #
echo "#    Manutencao Preventiva - v:0.4    #
echo "# # # # # # # # # # # # # # # # # # # #"

c:
cd\
cd "C:\Program Files\CCleaner"
cd "C:\Program Files (x86)\CCleaner"
cd "CCleaner"
start /wait /MIN CCleaner.exe /AUTO
echo "%HOJE%" > %LOG_CCleaner%

c:
cd\
cd "C:\Program Files\Auslogics\DiskDefrag"
cd "C:\Program Files (x86)\Auslogics\DiskDefrag"
start /wait /MIN cdefrag -c

exit
