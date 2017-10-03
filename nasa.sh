#!/bin/sh

echo -e "\033[01;32m┌────────────────────────────────────────┐"
echo -e "\033[01;32m│                                        │"
echo -e "\033[01;32m│          ▗▄ ▗▖                         │"
echo -e "\033[01;32m│          ▐█ ▐▌                         │"
echo -e "\033[01;32m│          ▐▛▌▐▌ ▟██▖▗▟██▖ ▟██▖          │"
echo -e "\033[01;32m│          ▐▌█▐▌ ▘▄▟▌▐▙▄▖▘ ▘▄▟▌          │"
echo -e "\033[01;32m│          ▐▌▐▟▌▗█▀▜▌ ▀▀█▖▗█▀▜▌          │"
echo -e "\033[01;32m│          ▐▌ █▌▐▙▄█▌▐▄▄▟▌▐▙▄█▌          │"
echo -e "\033[01;32m│          ▝▘ ▀▘ ▀▀▝▘ ▀▀▀  ▀▀▝▘          │"
echo -e "\033[01;32m│                                        │"
echo -e "\033[01;32m│                                        │"
echo -e "\033[01;32m└────────────────────────────────────────┘"
echo -ne "\033[01;32mUser\033[00m: "
read user
echo -ne "\033[01;32mSenha\033[00m: "
read senha
if [ "$user" == "adm" ] && [ "$senha" == "nasa12345" ]
then
	echo -e "\033[01;32mBem Vindo ao centro de controle da NASA"
	echo -e "\033[01;32mOque deseja fazer?"
	echo -e "\033[01;32m1.\033[00m Explodir a terra"
	echo -e "\033[01;32m2.\033[00m Explodir a russia"
	echo -e "\033[01;32m3.\033[00m Documentos sobre aliens"
	echo -e "\033[01;32m4.\033[00m Area 51"
	echo -ne "\033[01;32m>\033[00m "
	read resp
else
	echo -e "\033[01;31mAcesso Negado"
fi

if [ "$resp" == 1 ]
then
	echo -e "\033[01;31mBOMM"
elif [ "$resp" == 2 ]
then
	echo -e "\033[01;31mBOMM RUSSIA" 
elif [ "$resp" == 3 ]
then
	echo -e "\033[01;33mVocê foi rastreado... $USER"
elif [ "$resp" == 4 ]
then
	echo -e "\033[01;31mVocê foi rastreado... $USER"
elif [ "$resp" == 1234 ]
then
	echo -e "\033[01;31mErro no sistema"
elif [ "$resp" == "exit" ]
then
	exit
fi