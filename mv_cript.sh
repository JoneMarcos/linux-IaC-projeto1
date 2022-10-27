#!/bin/bash
echo "Criação dos diretorios"
mkdir /home/publico
mkdir /home/publico/adm
mkdir /home/publico/ven
mkdir /home/publico/sec

echo "Criação dos grupos"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

chown root:GRP_ADM /home/publico/adm/
chown root:GRP_VEN /home/publico/ven/
chown root:GRP_SEC /home/publico/sec/

echo "Alteração das permissões dos grupos"
chmod 777 /home/publico/ && chmod 770 /home/publico/adm/ && chmod 770 /home/publico/ven/ && chmod 770 /home/publico/sec/

echo "Criação dos usuários ADM"
useradd Carlos -m -c "Carlos ADM" -s /bin/bash -p $(openssl passwd Senha123)
useradd Maria -m -c "Maria ADM" -s /bin/bash -p $(openssl passwd Senha123)
useradd Joao -m -c "Joao ADM" -s /bin/bash -p $(openssl passwd Senha123)

echo "Criação dos usuários VEN"
useradd Debora -m -c "Debora ADM" -s /bin/bash -p $(openssl passwd Senha123)
useradd Sebastiana -m -c "Sebastiana ADM" -s /bin/bash -p $(openssl passwd Senha123)
useradd Roberto -m -c "Roberto ADM" -s /bin/bash -p $(openssl passwd Senha123)

echo "Criação dos usuários SEC"
useradd Josefina -m -c "Josefina ADM" -s /bin/bash -p $(openssl passwd Senha123)
useradd Amanda -m -c "Amanda ADM" -s /bin/bash -p $(openssl passwd Senha123)
useradd Rogerio -m -c "Rogerio ADM" -s /bin/bash -p $(openssl passwd Senha123)

echo "Atribuir o grupo ao usuário"
usermod -G GRP_ADM Carlos
usermod -G GRP_ADM Maria
usermod -G GRP_ADM Joao

usermod -G GRP_VEN Debora
usermod -G GRP_VEN Sebastiana
usermod -G GRP_VEN Roberto

usermod -G GRP_SEC Josefina
usermod -G GRP_SEC Amanda
usermod -G GRP_SEC Rogerio

echo "Usuários e grupos atribuidos com sucesso."

