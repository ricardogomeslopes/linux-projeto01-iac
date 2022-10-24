#!/bin/bash

echo "Criando estrutura de usuários, diretórios e permissões..."

echo "Criando Grupos..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


echo "Criando usuários e adicionando aos seus grupos..."
useradd carlos -c "Carlos Silva" -m -s /bin/bash -p $(openssl passwd -1 Super123) -G GRP_ADM
useradd maria -c "Maria Silva" -m -s /bin/bash -p $(openssl passwd -1 Super123) -G GRP_ADM
useradd joao -c "João Silva" -m -s /bin/bash -p $(openssl passwd -1 Super123) -G GRP_ADM

useradd debora -c "Débora Souza" -m -s /bin/bash -p $(openssl passwd -1 Super123) -G GRP_VEN
useradd sebastiana -c "Sebastiana Souza" -m -s /bin/bash -p $(openssl passwd -1 Super123) -G GRP_VEN
useradd roberto -c "Roberto Souza" -m -s /bin/bash -p $(openssl passwd -1 Super123) -G GRP_VEN

useradd josefina -c "Josefina Silva Souza" -m -s /bin/bash -p $(openssl passwd -1 Super123) -G GRP_SEC
useradd amanda -c "Amanda Silva Souza" -m -s /bin/bash -p $(openssl passwd -1 Super123) -G GRP_SEC
useradd rogerio -c "Rogério Silva Souza" -m -s /bin/bash -p $(openssl passwd -1 Super123) -G GRP_SEC

echo "Criando diretórios..."

mkdir /publico
chown root:root /publico
chmod 777 /publico

mkdir /adm
chown root:GRP_ADM /adm
chmod 770 /adm

mkdir /ven
chown root:GRP_VEN /ven
chmod 770 /ven


mkdir /sec
chown root:GRP_SEC /sec
chmod 770 /sec


echo "Finalizado"
