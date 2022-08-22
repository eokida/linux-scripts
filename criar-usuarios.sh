#!/bin/bash

echo "Criando diretorios..."

mkdir /publico
mkdir /direcao
mkdir /vendas
mkdir /compras

echo "Criando grupos de usuario..."

groupadd grupo_direcao
groupadd grupo_vendas
groupadd grupo_compras

echo "Criando usuarios..."

useradd eric -m -s /bin/bash -p $(openssl passwd -crypt segredo) -G grupo_direcao
useradd helena -m -s /bin/bash -p $(openssl passwd -crypt segredo) -G grupo_direcao
useradd marcio -m -s /bin/bash -p $(openssl passwd -crypt segredo) -G grupo_direcao

useradd karina -m -s /bin/bash -p $(openssl passwd -crypt segredo) -G grupo_vendas
useradd igor -m -s /bin/bash -p $(openssl passwd -crypt segredo) -G grupo_vendas
useradd melissa -m -s /bin/bash -p $(openssl passwd -crypt segredo) -G grupo_vendas

useradd joao -m -s /bin/bash -p $(openssl passwd -crypt segredo) -G grupo_compras
useradd sergio -m -s /bin/bash -p $(openssl passwd -crypt segredo) -G grupo_compras
useradd milena -m -s /bin/bash -p $(openssl passwd -crypt segredo) -G grupo_compras

echo "Definindo permissoes aos diretorios..."
chown root:grupo_direcao /direcao
chown root:grupo_vendas /vendas
chown root:grupo_compras /compras

chmod 770 /direcao
chmod 770 /vendas
chmod 770 /compras
chmod 777 /publico

echo "Fim....."

