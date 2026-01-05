#!/bin/sh
clear
echo ####################################################################################
echo Script GENERICO para backp de servidores na Nuvem do Copy (obsoleto)
echo CONNECTIVA REDES DE COMPUTADORES
echo (35)3822-4271
echo "@dnat"
echo ####################################################################################

### BEGIN INIT INFO
# Provides:          copy-bkp.sh.sh
# Required-Start:    $local_fs $remote_fs $network $syslog
# Required-Stop:     $local_fs $remote_fs $network $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      
# Short-Description: Start copy-bkp.sh at boot time
# Description:       Enable service provided by copy-bkp.sh.
### END INIT INFO

# Serial: 2014042401

### Variaveis ###
COPYCONSOLE=/opt/copy/x86_64/CopyConsole
COPYCMD=/opt/copy/x86_64/CopyCmd
DIR_EXCLUIDOS="/Marte /Sol /Teste /Netuno"
USUARIO=user@dominio.com
SENHA=123456
DIRETORIO=/home/copy

#Inicia o Daemon CopyConsole
echo 'Iniciando daemon de BKP (Barracuda Copy) ...'
$COPYCMD cloud exclude exclude $DIR_EXCLUIDOS
$COPYCONSOLE --daemonize -u=$USUARIO -r=$DIRETORIO -p=$SENHA
echo 'Daemon de BKP iniciado!'

