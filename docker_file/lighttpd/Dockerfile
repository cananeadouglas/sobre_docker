FROM alpine
RUN apk add --no-cache lighttpd
RUN echo "Lighttpd web server is running" > /var/www/localhost/htdocs/index.html
EXPOSE 80
CMD lighttpd -D -f /etc/lighttpd/lighttpd.conf
