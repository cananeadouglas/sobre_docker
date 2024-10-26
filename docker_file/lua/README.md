# Construa a imagem Docker
docker build -t lua_app00 .

# Execute o contêiner
docker run -v $(pwd):/app -it --cpus 0.5 --memory 1G --rm lua_app00:latest /bin/bash

