#! /bin/bash
clear

echo "STOP Ambiente Docker da aplicação Allbooks - backend."
echo "Conteiner: "
echo " "
echo "Parando o conteiner de frontend [allbooks-backend]."
echo " "
sudo docker stop allbooks-backend
echo " "
./ver-ambiente-docker-allbooks.sh
