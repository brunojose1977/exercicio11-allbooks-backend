#!/bin/bash
clear

path_aplicacao_raiz=/home/brunojose/devops/curso4-docker/exercicio11-allbooks-backend/
path_aplicacao_back_host=/home/brunojose/devops/curso4-docker/exercicio11-allbooks-backend/api-alurabooks
path_pasta_back_nodejs=./api-alurabooks
nome_arquivo_compactado_back=aplicacao-back.tar.gz

echo "Preparação e execução do ambiente de conteiner Docker da aplicação AllBooks Backend Nodejs."
echo " "
echo "Instalação e Execução"
echo "----------------------"
echo " "
echo "Após a compactação da aplicação, conforme Dockerfile, será realizado o build da imagem do conteiner e o arquivo $nome_arquivo_compactado_front será copiado da máquina host "
echo "para dentro do conteiner para a pasta definida no workdir /app, e algumas atualizações de Linux serão feitas."
echo " "
echo "Então o outro script [2-descompactar-configurar-rodar-conteiner.sh] vai finalizar a instalação, fazendo a descompactação e execução dos comandos,"
echo "npm install, build, que vão deixar a aplicação e suas dependencias instaladas, configuradas. Logo ficará pronta para a chamada de execução do ENTRYPOINT."
echo " "
echo "Chamada de execução do ENTRYPOINT do Dockerfile: back (npm run start-auth)."
echo " "

sleep 2

## COMPACTAÇÃO DO BACKEND ##

cd $path_aplicacao_back_host
tar czf $path_aplicacao_raiz$nome_arquivo_compactado_back .

echo " "
echo "Compactação do backend finalizada."
echo " "
cd $path_aplicacao_raiz
ls -la $nome_arquivo_compactado_back
echo " "
echo " "
echo "Agora será executado o comando de geração da imagem mononito back+front e também da criação e execução do conteiner monolito back + front : sudo docker compose up"
echo " "
echo " Ao final dessa execução para testar no browser do host:"
echo " "
echo " Back Node.js      https://0.0.0.0:6000 "
echo " "
echo " Utilize o Postman para testes de chamadas POST,GET, etc."
echo " " 

sudo docker compose up