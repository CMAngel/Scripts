#!/bin/bash

clear
echo -e "\033[00;36m#=========================================================#"
echo -e "# Se você não está fazendo nada de bom para os outros,	  #"
echo -e "# então você não está fazendo a coisa certa.		  #"
echo -e "#=========================================================#"
sleep 3

#MODULOS
limpeza()
{
	clear
	echo -e "Esvaziando a lixeira"
	echo -e "--------------------------"
	sudo rm -rf $HOME/.local/shared/Trash/files/*
	echo
	echo -e "Limpeza concluída"
	echo -e "======================="
	sleep 2
	clear
	echo -e "Limpando cache do sistema"
	echo -e "-------------------------------"
	sudo rm -rf /var/cache/pacman/pkg/*
	echo
	echo -e "Limpeza concluída"
	echo -e "======================="
	sleep 2
	clear
	echo -e "Limpando arquivos orfãos"
	echo -e "------------------------------"
	sudo pacman -Rns $(pacman -Qtqd) --noconfirm 2> /dev/null
	echo
	echo -e "Limpeza concluída"
	echo -e "======================="
	sleep 2
	clear
	echo -e "Limpando outros arquivos"
	echo -e "------------------------------"
	sudo rm -rf ~/.dvdcss ~/.pki/* ~/.thumbnails/* ~/.cache/* /tmp/* config/ghb/EncodeLogs ~/.config/ghb/Activity.log.* ~/.config/ghb/ghb.pid.* ~/.config/ghb/queue.* ~/.bash_history ~/.esd_auth ~/.gksu.lock
	echo
	echo -e "Limpeza concluída"
	echo -e "======================="
	sleep 2
	clear
	menu
}

clear


#SUBMENUS
#NOME DO MÓDULO E CATEGORIA
limpeza_submenu()
{
	clear
	echo -e "Limpeza do sistema"
	echo -e "------------------------"
	echo
	echo -e "Esvaziar a lixeira"
	echo -e "Limpar cache do sistema"
	echo -e "Limpar arquivos orfãos"
	echo -e "Limpando outros arquivos"
	echo
	read -n1 -p "Deseja continuar com a limpeza? [s/n]" escolha_limpeza_submenu

	case $escolha_limpeza_submenu in
		s|S) clear
			limpeza
			sleep 3
			;;
		n|N) clear
			menu
			;;
		*) echo
			echo
			echo "Alternativa Incorreta"
			sleep 2
			clear
			menu
			;;
	esac
			
}


#MENU
menu()
{
	clear
	echo -e "Script teste do Arch"
	echo -e "---------------------"
	echo
	echo -e "A) Limpar o sistema"
	echo -e "B) Sair"
	echo
	read -n1 -p "Escolha a opção desejada: " escolha_menu

	case $escolha_menu in
		a|A) clear
			limpeza_submenu
			sleep 3
			;;
		b|B) clear
			exit
			;;
		*) echo
			echo
			echo "Alternativa Incorreta"
			sleep 2
			clear
			menu
			;;
	esac
}
menu
