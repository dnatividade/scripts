#!/bin/bash
clear
echo ####################################################################################
echo Script para instalar um impressora HP 1020 (obsoleto)
echo CONNECTIVA REDES DE COMPUTADORES
echo (35)3822-4271
echo "@dnat"
echo ####################################################################################

#
#Baixando Firmware
wget http://foo2zjs.rkkda.com/firmware/sihp1020.tar.gz
tar xvzf sihp1020.tar.gz
sudo aptitude install printer-driver-foo2zjs
arm2hpdl sihp1020.img > sihp1020.dl
sudo cp ./sihp1020.dl /usr/share/foo2zjs/firmware/sihp1020.dl

#Logue-se como root, para conseguir acesso a esses dispositivos 
su
cat /usr/share/foo2zjs/firmware/sihp1020.dl > /dev/usb/lp0
#
echo "Pronto! Agora Você pode instalar sua impressoras HP LaserJet 1020"
