#!/bin/bash

# CONNECTIVA REDES DE COMPUTADORES LTDA
#
# @dnat
#
# Script para remover um Cluster no Proxmox - incondicionalmente
#
# Data: 2024-12-01

systemctl stop pve-cluster corosync
pmxcfs -l
rm /etc/corosync/*
rm /etc/pve/corosync.conf
rm /var/lib/corosync/*
killall pmxcfs
systemctl start pve-cluster

rm -rf /etc/pve/nodes/<nome-do-no-antigo1>
rm -rf /etc/pve/nodes/<nome-do-no-antigo2>
rm -rf /etc/pve/nodes/<nome-do-no-antigoN>

systemctl restart pveproxy


