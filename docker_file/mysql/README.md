# explicação:

sudo -> comandos de administrador
docker -> chamando o programa
build -> função construir
-t -> renomeando para meubanco
. -> arquivo de configuração sql está na raiz.

Note que são executados 4 comandos SET, esses comandos são responsáveis por habilitar os caracteres utf8 no MySQL, por padrão essas variáveis da imagem são definidas como latin1, isso faz com que o banco não reconheça caracteres unicode.

constuindo o container, definindo nome do container (meubanco)
$ sudo docker build -t banco .

executanco/ligando o container.
$ docker run -d -p 3306:3306 -e MYSQL_ROOT_PASSWORD=12345 -e MYSQL_DATABASE=futebol -e MYSQL_USER=douglas -e MYSQL_PASSWORD=123456 banco

entrando no banco para alteração:
$ docker exec -it container_id /bin/bash

seu_usuario@container_id:/# mysql -u root -p
Enter password: 12345

###################################################
ESTUDOS DE BANCO DE DADOS

ex.: COMANDOS LIKE:

caso queira fazer com docker-compose:
version: '3.5'
services:
    backend:
        image: backoffice-backend
        ports:
            - "80:80"
    database:
        image: backoffice-db
        ports:
            - "3306:3036"
        environment:
            MYSQL_ROOT_PASSWORD: RootPassword
            MYSQL_DATABASE: Backoffice
            MYSQL_USER: MainUser
            MYSQL_PASSWORD: MainPassword
        volumes:
            db-volume:/var/lib/mysql
volumes:
    db-volume:

# Exercicios:

1. Faça um Join entre as tabelas abaixo, criando uma consulta que contenha o nome do país dos Jogadores.
2. Liste o primeiro nome e o pais de cada jogador.


enjoy.


Dicas: Inner Join -> A1"intersecção"B2
