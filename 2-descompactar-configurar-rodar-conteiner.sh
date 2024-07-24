#!/bin/bash

path_aplicacao_container=/usr/share/nginx/html
nome_arquivo_compactado_back=aplicacao-back.tar.gz

path_pasta_back_nodejs=/usr/share/nginx/html/api-alurabooks

# ##### BACKEND #######
echo "Deploy da aplicação AllBooks na imagem que será usada no instanciamento do coiteiner Docker."
echo " "
echo "2 - Descompactando o BACKEND do projeto no container"
echo "----------------------------------------------------"
echo " "
echo " "
echo "O Tudo pronto, conforme previsto no Dockerfile o arquivo $nome_arquivo_compactado_back gerado na máquina host e copiado "
echo "para dentro do conteiner para a pasta web: $path_aplicacao_container."
echo "Então depois de descompactar serão realizados os comandos: npm run start-auth"
echo " "

#Rodando comandos a partir do WORKDIR definido no Dockerfile para onde esse script foi copiado no conteiner.
cd /app
mkdir $path_pasta_back_nodejs
cp $nome_arquivo_compactado_back $path_pasta_back_nodejs
rm ./$nome_arquivo_compactado_back
cd $path_pasta_back_nodejs
tar xzf $nome_arquivo_compactado_back .
rm $nome_arquivo_compactado_back

#Iniciando instalando as dependencias do backend 
#OBS: A execução da aplicação (npm run start-auth) será executado no ENTRYPOINT do Dockerfile
npm i 

echo "Finalizada a instalação da aplicação de backend Node.js do Allbooks."
echo " "
