#!/bin/bash

#Código do Fernando 
clear

echo "LOGIN DE USUÁRIOS";
NOME(){
read -p "Digite seu nome: " NAME
echo $NAME| grep -E '[0-9,.;:/?!@#$%"&*()_+=]'
	if [ $? == 1 ]; then
	echo "Seu nome é válido!" && e-mail
	else
	echo "Seu nome é inválido! TENTE NOVAMENTE" && NOME
	fi
}
e-mail(){
read -p "Digite seu e-mail: " mail
echo $mail| grep -E '^([a-zA-Z0-9_-.])+@[0-9a-zA-Z.-]+\.[a-z]{2,3}$' \
&& echo -e "Seu e-mail é válido!" && TELEFONE || echo -e \
"Seu e-mail é inválido! TENTE NOVAMENTE!" && e-mail
}
TELEFONE(){
		read -p "Digite seu telefone :(DDD)xxxx-xxxx = " fone
echo $fone | grep -E '^[(][0-9]{2}[)][0-9]{4}+-[0-9]{4}$' && \
echo -e "Seu telefone é válido!" && RG || echo -e \
"Seu telefone é inválido! TENTE NOVAMENTE!" && TELEFONE
}
RG(){
read -p "Digite seu RG :(xx.xxx.xxx-x) = " rg
echo $rg | grep -E '^[0-9]{2}\.[0-9]{3}\.[0-9]{3}-[0-9]|[xX]{1}' &&
echo -e "Seu rg é válido!" && CPF || echo -e "Seu rg é inválido! TENTE NOVAMENTE!" && RG
}
CPF(){
read -p "Digite seu CPF:(xxx.xxx.xxx-xx) = " cpf
echo $cpf | grep -E '^[0-9]{3}\.[0-9]{3}\.[0-9]{3}[-]{0,1}[0-9]{2}' &&
echo -e "Seu cpf é válido!" && DATA || echo -e " Seu cpf é inválido! TENTE NOVAMENTE!" && CPF
}
DATA(){
read -p "Digite sua data de nascimento:(xx/xx/xxxx) = " dt
echo $dt | grep -E '^[0-3]{1}[0-9]{1}[/][0-1]{1}[0-9]{1}[/][0-9]{4}$' &&
echo -e "Sua data de nascimento é válida!" && IP || echo -e \
"Sua data de nascimento é inválida! TENTE NOVAMENTE!" && DATA
}
IP(){
read -p "Digite seu IP: " ip
echo $ip | grep  -E '^([0-9]\.|[1-9][0-9]\.|1[0-9]{2}\.|2[0-4][0-9]\.|25[0-5]\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2{0-4}[0-9]|25[0-4])$';
if (( $? == 0 )); then
        echo "Seu IP é válido!" && exit
        else
        echo " Seu IP é inválido! TENTE NOVAMENTE!" && IP
        fi
}
NOME

