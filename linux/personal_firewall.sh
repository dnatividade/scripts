#!/bin/bash

##########################
# Personal Firewall - v2
# Adapted by: dnatividade
# Date: 2019-01-10
##########################

IF_INT="eth0" #network interface
#IP_INT="`ifconfig eth0 | awk 'NR == 2{ print $3 }'`" 	#get IP address
####################################################

#Clear counters and custom chains
for TABLE in filter nat mangle raw security
do
      iptables -t $TABLE -F
      iptables -t $TABLE -X
done
####################################################

#Default policies
iptables -P INPUT DROP
iptables -P FORWARD DROP
iptables -P OUTPUT DROP
####################################################

#Rules
iptables -A INPUT  -i lo -j ACCEPT
iptables -A OUTPUT -o lo -j ACCEPT
iptables -A INPUT  -i $IF_INT -m state --state ESTABLISHED,RELATED -j ACCEPT
iptables -A OUTPUT -o $IF_INT -m state --state NEW,ESTABLISHED,RELATED -j ACCEPT
####################################################

#Open especific port
#iptables -A INPUT -i $IF_INT -p tcp --dport 80 -j ACCEPT
#iptables -A INPUT -i $IF_INT -p udp --dport 12345 -j ACCEPT
####################################################

#LOG traffic
#iptables -A INPUT   -i $IF_INT -j LOG --log-prefix " BLOCKED>>> "
#iptables -A OUTOUT  -o $IF_INT -j LOG --log-prefix " BLOCKED>>> "
#iptables -A FORWARD -i $IF_INT -j LOG --log-prefix " BLOCKED>>> "
#iptables -A FORWARD -i $IF_INT -j LOG --log-prefix " BLOCKED>>> "
####################################################

