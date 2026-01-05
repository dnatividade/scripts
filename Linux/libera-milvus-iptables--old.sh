#!/bin/bash
clear
echo ################################################################################################
echo Libera o programa de monitoramento e abertura de chamados Milvus no firewall iptables (obsoleto)
echo As linhas abaixo devem ser adicionadas ao scrip de firewall iptables
echo ""
echo CONNECTIVA REDES DE COMPUTADORES
echo (35)3822-4271
echo "@dnat"
echo ################################################################################################

#
iptables -A FORWARD -i $INT -o $EXT1 -d 13.64.0.0/11 -p tcp -m multiport --dport 80,443 -j ACCEPT #Agente Milvus
iptables -A FORWARD -i $INT -o $EXT2 -d 13.64.0.0/11 -p tcp -m multiport --dport 80,443 -j ACCEPT #Agente Milvus
iptables -A FORWARD -i $INT -o $EXT1 -d 52.67.110.213/11 -p tcp -m multiport --dport 80,443 -j ACCEPT #Agente Milvus
iptables -A FORWARD -i $INT -o $EXT2 -d 52.67.110.213/11 -p tcp -m multiport --dport 80,443 -j ACCEPT #Agente Milvus
iptables -A FORWARD -i $INT -o $EXT1 -d 54.224.0.0/12 -p tcp -m multiport --dport 80,443 -j ACCEPT #Agente Milvus
iptables -A FORWARD -i $INT -o $EXT2 -d 54.224.0.0/12 -p tcp -m multiport --dport 80,443 -j ACCEPT #Agente Milvus
iptables -A FORWARD -i $INT -o $EXT1 -d 54.232.248.159 -p tcp -m multiport --dport 80,443 -j ACCEPT #Agente Milvus
iptables -A FORWARD -i $INT -o $EXT2 -d 54.232.248.159 -p tcp -m multiport --dport 80,443 -j ACCEPT #Agente Milvus
iptables -A FORWARD -i $INT -o $EXT1 -d 204.79.195.0/24 -p tcp -m multiport --dport 80,443 -j ACCEPT #Agente Milvus
iptables -A FORWARD -i $INT -o $EXT2 -d 204.79.195.0/24 -p tcp -m multiport --dport 80,443 -j ACCEPT #Agente Milvus
iptables -A FORWARD -i $INT -o $EXT1 -d 204.79.196.0/23 -p tcp -m multiport --dport 80,443 -j ACCEPT #Agente Milvus
iptables -A FORWARD -i $INT -o $EXT2 -d 204.79.196.0/23 -p tcp -m multiport --dport 80,443 -j ACCEPT #Agente Milvus
#
iptables -A FORWARD -i $INT -o $EXT1 -d 52.67.244.104 -p tcp -m multiport --dport 5901,2964 -j ACCEPT #Acesso remoto Milvus
iptables -A FORWARD -i $INT -o $EXT2 -d 52.67.244.104 -p tcp -m multiport --dport 5901,2964 -j ACCEPT #Acesso remoto Milvus
#
#

