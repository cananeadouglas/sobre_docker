Zabbix com Docker Compose
O arquivo docker-compose.yml que disponibilizamos em nosso Github, foi configurado de forma que o Docker crie 4 containers:

zabbix-server 
zabbix-frontend Admin zabbix
grafana admin admin
mysql

Foram utilizadas as imagens oficiais do Zabbix, do Grafana e do MySQL. Os links para consulta estão no final deste artigo.

docker-compose up -d
