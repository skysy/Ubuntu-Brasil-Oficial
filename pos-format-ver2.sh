#!/bin/bash

while true; do
clear

echo "============================================================"
echo "Pós-Formatação: Lista de Programas para Ubuntu e Linux Mint."
echo "Canal TELEGRAM: @terminalgnulinux | @UbuntuBrasilOficial."
echo "Criado por: @J053C7U2 | Data: 15/05/2016"
echo "Modificado por: @Syncrotons | Data: 19/05/2016"
echo "Versão: 1.0.0"
echo "============================================================"
echo ""
echo "|PACOTE DE PROGRAMAS PÓS NSTALAÇÃO DO UBUNTU E LINUX MINT|"
echo ""
echo "(1) Pacote Web Dev           - PHP, Apache, MySql e PhpMyAdmin"
echo "(2) Ubuntu Make              - Pacote e ferramentas de desevolvimento"
echo "(3) Notepadqq                - Editor de Texto (código) C++"
echo "(4) Telegram Desktop         - Telegram Oficial via PPA"
echo "(5) PyCharm                  - IDE para programar em Python"
echo "(6) Chromium                 - Navegador Web"
echo "(7) Synaptic                 - Gerenciador de pacotes apt com interface gráfica"
echo "(8) Flash VLC e Codec        - Plugin e Reprodutor para Navegador Web/Vídeos"
echo "(9) Atualizar Kernel         - Atenção ao utilizar esta opção"
echo ""
echo "*Digite 0 para limpar, atualizar pacotes e sair"
echo "*Digite uma opção e pressione [ENTER]*"

read opc

if [ "$opc" -gt "11" ]; 
	then
                echo "Número Incorreto! Tente Novamente."
		sleep 2
		exit  0
fi
if [ "$opc" = "0" ]; then
	echo "Saindo..."
	sudo apt upgrade && sudo apt update
	sudo dpkg --configure -a
	sudo apt install -f
	sudo apt autoremove
	sudo apt autoclean 
	echo "Limpeza concluida"
	sleep 2
	exit
fi
case $opc in
"1")
		echo "Instalação Pacote..."
		sleep 2
		echo "instalação Apache"
		sudo apt install apache2
		echo "instalação do php"
		sudo apt install php5 libapache2-mod-php5
		echo "instalação do MySql"
		sudo apt install mysql-server
		echo "instalação do PHPMyAdmin"
		sudo apt install phpmyadmin
		cd /var/
		sudo chmod -R 777 www/
		echo ""
		echo "Pacote instalado."
		echo ""
		sleep 4
;;
"2")
		echo "Instalando Ubuntu Make..."
		sleep 2
		sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make
		sudo apt update
		sudo apt install ubuntu-make
		echo ""
		echo "Ubuntu Make instalado"
		sleep 4
;;
"3")
		echo "Instalando Notepadqq..."
		sleep 2
		sudo add-apt-repository ppa:notepadqq-team/notepadqq
		sudo apt update
		sudo apt install notepadqq
		echo ""
		echo "Notepadd Instalado." 
		echo ""
		sleep 4;;
"4")

		echo "Instalando Telegram..."
		sleep 2
		sudo add-apt-repository ppa:atareao/telegram
		sudo apt update
		sudo apt install telegram
		echo ""
		echo "Telegram instalado"
		sleep 4

;;
"5")
		echo "Instalação do PyCharm"
		sleep 2
		sudo add-apt-repository ppa:mystic-mirage/pycharm
		sudo apt update
		sudo apt install pycharm-community
		echo ""
		echo "Pycharm instalado."
		echo ""
		sleep 4

;;
"6")
		echo "Instalando Chromium Navegador Web..."
		sleep 2
		sudo add-apt-repository ppa:a-v-shkop/chromium
		sudo apt-get update
		sudo apt-get install chromium-browser
		echo ""
		echo "Chromium Instalado com Sucesso!!!"
;;
"7")
		echo "Instalação do Synaptic"
		uname -m
		sleep 2
		wget wget https://launchpadlibrarian.net/195345684/synaptic_0.81.3_amd64.deb -O synaptic.deb
		sudo dpkg -i synaptic.deb
		echo ""
		echo "Synaptic instalado."
		sleep 4
;;
"8")
		echo "Instalando Flash VLC e Codec"
		sleep 2
		sudo apt install adobe-flashplugin
		sudo apt install ubuntu-restricted-extras
		sudo apt install vlc
		echo ""
		echo "Flash, VLC e codec instalados."
		sleep 4
;;
"9")
		echo "Atualizando Kernel..."
		sleep 2
		sudo apt install lynx
		wget https://www.dropbox.com/s/fwkeja3cijdbk7l/kernel-update
		chmod +x kernel-update
		sudo ./kernel-update
		sleep 4
;;
esac
done
