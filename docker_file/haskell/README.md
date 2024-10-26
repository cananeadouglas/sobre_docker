Você pode criar um arquivo Docker chamado Dockerfile e adicionar esse conteúdo a ele. Depois, coloque seus arquivos de código C e Haskell no mesmo diretório que o Dockerfile.

Para construir a imagem Docker, navegue até o diretório onde você salvou o Dockerfile e os arquivos de código e execute o seguinte comando:



docker build -t my-haskell .



Isso criará uma imagem Docker chamada my-linux-env com suporte para compiladores de C e Haskell.

Depois de construir a imagem, você pode executar um contêiner interativo com o seguinte comando:



docker run -v $(pwd):/usr/src/app -it --cpus 0.5 --memory 1G --rm my-haskell:latest



Isso iniciará um contêiner interativo com a imagem que você acabou de criar. Você poderá acessar o ambiente Linux com os compiladores de C e Haskell instalados.

Lembre-se de substituir o conteúdo do Dockerfile pelos requisitos específicos do seu projeto, se necessário.
