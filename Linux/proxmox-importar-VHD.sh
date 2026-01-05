#!/bin/bash

# CONNECTIVA REDES DE COMPUTADORES LTDA
#
# @dnat
#
# Comandos uteis para importar um VHD para o Proxmox, instalar agent qemu
# e testar conexão do Hypervisor com as VMs
#
# Data: 2024-12-01

### COMANDOS ÚTEIS ###

# Extrai o arquivo ova para vhd
tar xvf VM.ova

# Importa um disco vhd ou vmk
qm importdisk <vmid> VM.vhd <storage>

# Instala agente de comunicação com o Proxmox (instalação em uma VM Debian based)
apt-get install qemu-guest-agent
systemctl start qemu-guest-agent
systemctl enable qemu-guest-agent

# Testa a comunicação do Proxmox com a VM (rodar no terminal do Proxmox)
# (se não aparecer nada é porque está tudo certo com a comunicação)
qm agent <vmid> ping

@connectiva


mount -o rw /dev/sdd1 xen
