#!/bin/bash

echo "Atualizando o sistema"

apt upgrade -y

echo "Sistema atualizado, instalando o Apache 2"

apt install apache2 -y

echo "Apache instalado, instalando o unzip"

apt install unzip -y

echo "Unzip instalado, baixando aplicação no diretorio /tmp"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Movendo arquivos para dentro do apache"

cd linux-site-dio-main
cp -R * /var/www/html/

echo "Finalizado!"
