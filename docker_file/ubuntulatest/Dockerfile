# Use a imagem oficial do Ubuntu como base
FROM ubuntu:latest

# Atualize o sistema e instale utilitários comuns
RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    software-properties-common \
    curl \
    wget \
    git \
    unzip \
    nano \
    stress \
    && apt-get clean

# Adicione comandos aqui para instalar outros pacotes e software

RUN apt-get install net-tools -y

# Exemplo: Instalar o Node.js
# RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash -
# RUN apt-get install -y nodejs

# Exemplo: Instalar o Docker
# RUN curl -fsSL https://get.docker.com | bash -

# Limpe o cache de pacotes
RUN apt-get clean

# Defina um diretório de trabalho padrão
WORKDIR /app

# Você pode usar o contêiner com outros comandos ou scripts de inicialização, conforme necessário

# Exemplo: Iniciar um servidor da web
# CMD ["python", "-m", "http.server", "8080"]

# Exemplo: Executar um shell interativo
# CMD ["/bin/bash"]

