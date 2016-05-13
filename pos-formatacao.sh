#!/bin/bash

# Limpeza e atualização
# @Syncrotons
echo "Upgrade e Update"
sudo apt-get upgrade && sudo apt-get update
echo "Atualização do sistema"
sudo apt-get dist-upgrade
echo "Atualzar Kernel"
sudo apt-get install lynx
wget https://www.dropbox.com/s/fwkeja3cijdbk7l/kernel-update
chmod +x kernel-update
sudo ./kernel-update
echo "Instalação do Synaptic"
uname -m
wget wget https://launchpadlibrarian.net/195345684/synaptic_0.81.3_amd64.deb -O synaptic.deb
sudo dpkg -i synaptic.deb
sudo apt-get install -f
echo "Instalação de codec"
sudo apt-get install ubuntu-restricted-extras
echo "Instalação do PyCharm"
sudo add-apt-repository ppa:mystic-mirage/pycharm
sudo apt-get update
sudo apt-get install pycharm-community
echo "instalação Apache"
sudo apt-get install apache2
echo "instalação do php"
sudo apt-get install php5 libapache2-mod-php5
echo "instalação do MySql"
sudo apt-get install mysql-server
echo "instalação do PHPMyAdmin"
sudo apt-get install phpmyadmin
echo "Removendo arquivos desnecessarios"
sudo apt autoremove
cd /var/
sudo chmod -R 777 www/
