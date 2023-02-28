explicação: 

sudo -> comandos de administrador
docker -> chamando o programa
build -> função construir
-t -> renomeando para meubanco
. -> arquivo de configuração sql está na raiz.


Note que são executados 4 comandos SET, esses comandos são responsáveis por habilitar os caracteres utf8 no MySQL, por padrão essas variáveis da imagem são definidas como latin1, isso faz com que o banco não reconheça caracteres unicode.

constuindo o container.
$ sudo docker build -t meubanco .

executanco/ligando o container.
$ docker run -d -p 3306:3306 -e MYSQL_ROOT_PASSWORD=12345 -e MYSQL_DATABASE=meubanco -e MYSQL_USER=douglas -e MYSQL_PASSWORD=12345 meubanco

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


