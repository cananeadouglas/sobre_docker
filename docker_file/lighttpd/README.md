execute: 

docker container run -d --name websrv -p 80:80 -v $PWD/index.html:/var/www/localhost/htdocs/index.html lighttpd
