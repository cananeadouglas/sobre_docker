# Derivando da imagem oficial do MySQL
FROM mariadb:10.5

# Adicionando os scripts SQL para serem executados na criação do banco
COPY ./ /docker-entrypoint-initdb.d/
