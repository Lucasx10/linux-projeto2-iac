#!/bin/bash

echo "atulizando servidor..."

apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando os arquivos da aplicação..."

cd /temp
wget https://github.com/Lucasx10/site-portfolio-alura/archive/refs/heads/main.zip

unzip main.zip

cd site-portfolio-alura-main
cp -R * /var/www/html/

echo "Finalizado com sucesso!!"
