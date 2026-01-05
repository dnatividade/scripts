#!/bin/bash
clear
echo ####################################################################################
echo Convert uma chave .key em .rsa
echo CONNECTIVA REDES DE COMPUTADORES
echo (35)3822-4271
echo "@dnat"
echo ####################################################################################

openssl rsa -in client.key -text > client.rsa
