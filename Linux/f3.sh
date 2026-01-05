#!/bin/sh

### BEGIN INIT INFO
# Provides:          f3.sh
# Required-Start:    $local_fs $remote_fs $network $syslog
# Required-Stop:     $local_fs $remote_fs $network $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      
# Short-Description: Start firewall at boot time
# Description:       Enable service provided by f3.sh.
### END INIT INFO

# Serial: 2020042101 ## Firewall CONNECTIVA
# @dnat


#######################################################
#Autor:     #dn@at
#E-mail:    suporte@connectivaredes.com
#Github:    /dnatividade
#
#Desc.:     Script de firewall para a VPS da CONNECTIVA
#######################################################

### Variaveis ################
#interfaces de rede
IF_WAN=venet0:0

#redes
REDE_WAN=A.B.C.0/24

#IPs de servidores
SERVER=A.B.C.D
###

LOGDATA=`date +%d/%m/%Y' '%T`
##############################

### Mensagem de inicialização do Firewall ###
echo "Ativando Regras do Firewall -- #dnatividade"

### Carregando modulos ###
modprobe ip_nat_ftp
modprobe ip_conntrack
modprobe ip_conntrack_ftp
#modprobe ip_nat_pptp
#modprobe pptp


for TABLE in filter nat mangle raw security
do
      iptables -t $TABLE -F #Exclui todas as regras
      iptables -t $TABLE -X #Exclui cadeias customizadas
      iptables -t $TABLE -Z #Zera os contadores das cadeias
done
####################################################

### Define a política padrão do firewall
iptables -P INPUT DROP
iptables -P OUTPUT DROP
iptables -P FORWARD DROP
####################################################


#
##
###
### Drop connexoes invalidas ###
iptables -A INPUT   -m state --state INVALID -j DROP
iptables -A OUTPUT  -m state --state INVALID -j DROP
iptables -A FORWARD -m state --state INVALID -j DROP


#
##
###
### Regras PREROUTING -- Redirecionamento de portas ###
iptables -t nat -A PREROUTING -i $IF_WAN -p tcp --dport 3306  -j DNAT --to $SERVER:3306
iptables -t nat -A PREROUTING -i $IF_WAN -p tcp --dport 62742 -j DNAT --to $SERVER:3306


#
##
###
### Regras INPUT ###
iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
iptables -A INPUT -i lo -j ACCEPT
iptables -A INPUT -i $IF_WAN -p icmp --icmp-type 0 -j ACCEPT #Allow ICMP replay
iptables -A INPUT -i $IF_WAN -p icmp --icmp-type 8 -j ACCEPT #Allow ICMP request
iptables -A INPUT -i $IF_WAN -p tcp  --dport 37826 -j ACCEPT #Allow port 37826/TCP - SSH
iptables -A INPUT -i $IF_WAN -p tcp  --dport 80    -j ACCEPT #Allow port 80/TCP - HTTP
iptables -A INPUT -i $IF_WAN -p tcp  --dport 443   -j ACCEPT #Allow port 443/TCP - HTTPS
iptables -A INPUT -i $IF_WAN -p tcp  --dport 3306  -j ACCEPT #Allow port 3306/TCP - MariaDB
#
iptables -A INPUT -i $IF_WAN -s 202.107.207.229 -p tcp --dport 111 -j ACCEPT #Allow port 111/TCP - Weblink Management


#
##
###
### Regras OUTPUT ###
iptables -A OUTPUT -m state --state NEW,ESTABLISHED,RELATED -j ACCEPT
#iptables -A OUTPUT -m state --state ESTABLISHED,RELATED -j ACCEPT


#
##
###
### Regras POSTROUTING ###
#echo 1 > /proc/sys/net/ipv4/ip_forward

#Configurando NAT
#iptables -t nat -A POSTROUTING -s $REDE_IF_LAN -o $IF_WAN -j MASQUERADE #NAT: mascaramento (compartilhar Internet)
#iptables -t nat -A POSTROUTING -o $IF_WAN -j MASQUERADE #NAT: mascaramento (compartilhar Internet)

#dn@at


