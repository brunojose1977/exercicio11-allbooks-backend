#! /bin/bash
clear

echo "Ambiente Docker da aplicação Allbooks backend Node.js."
echo "Conteiner: "
echo " "
sudo docker ps -a | grep allbooks-backend
echo " "
echo " "
echo "Imagem:"
echo " "
sudo docker images | grep brunojose1977/exercicio11-allbooks-docker-compose-backend
echo " "
echo " "
echo " "
echo "- Para zerar o ambiente: ./zerar-ambiente-docker-allbooks.sh"
echo "- Para recriar todo o ambiente: ./1-pacote-imagem-conteiner.sh"
echo " "
echo " Ao final se conteiner estiver UP, realize os testes no browser do host:"
echo " "
echo " Back Node.js      https://0.0.0.0:6000 "
echo " " 
echo " Utilize Posteman para testes de chamadas de GET, PUT e etc. "
echo " "