#! /bin/bash
clear

echo "START Ambiente Docker da aplicação Allbooks - backtend."
echo "Conteiner: "
echo " "
echo "Iniciando o conteiner de backend do Allbooks [allbooks-backend]"
echo " "
sudo docker start allbooks-backend
echo " "
sleep 2
./ver-ambiente-docker-allbooks.sh
