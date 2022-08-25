#!/bin/bash

echo "Atualizando o servidor Ubuntu..."
apt-get update
apt-get upgrade -y

echo "Instalando Apache Web Server..."
apt-get install apache2 -y

echo "Configurando pagina inicial..."
echo "Ola mundo" > /var/www/html/index.html