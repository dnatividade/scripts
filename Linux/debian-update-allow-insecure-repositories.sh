#!/bin/bash
clear
echo ####################################################################################
echo Script para atualizar um sistema Debian Linux com problemas de repositórios
echo CONNECTIVA REDES DE COMPUTADORES
echo (35)3822-4271
echo "@dnat"
echo ####################################################################################
echo ""

echo "*** apt update ***"
apt update --allow-unauthenticated --allow-insecure-repositories
echo " "
echo "*** apt upgrade ***"
apt upgrade --allow-unauthenticated
echo " "
echo "*** apt autoremove ***"
apt autoremove
echo " "
echo "*** apt autoclean ***"
apt autoclean

