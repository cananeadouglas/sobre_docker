executando um container

docker run --name zabbix-appliance -p 8000:80 -p 10051:10051 -d zabbix/zabbix-appliance:latest

user: Admin
pass: zabbix
