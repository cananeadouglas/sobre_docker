Crie um arquivo docker-compose.yml:

Crie um arquivo chamado docker-compose.yml no diretório raiz do seu projeto. Este arquivo definirá os serviços necessários para o ambiente de desenvolvimento C/C++. Por exemplo:

yaml
Copy code
version: '3'
services:
  c-dev:
    image: gcc
    container_name: my-c-dev
    volumes:
      - ./code:/code
    tty: true
Neste exemplo, estamos definindo um serviço chamado c-dev com base na imagem gcc. Estamos montando um volume para compartilhar o código-fonte entre o sistema host e o contêiner. Também estamos habilitando a interação com o terminal do contêiner com tty: true.

Estruture o Diretório de Projeto:

Dentro do diretório do seu projeto, crie uma pasta chamada code onde você colocará seu código C/C++. O arquivo docker-compose.yml deve estar no diretório raiz do projeto.

Inicie o Ambiente de Desenvolvimento:

Para iniciar o ambiente de desenvolvimento, navegue até o diretório onde está o docker-compose.yml e execute o seguinte comando:

bash
Copy code
docker-compose up -d
Isso iniciará o contêiner com base na imagem gcc e montará o volume. O ambiente de desenvolvimento está pronto para uso.

Desenvolva e Execute seu Código:

Você pode entrar no contêiner e desenvolver seu código C/C++ da mesma forma que mencionei anteriormente. Use o comando docker exec para entrar no contêiner:

bash
Copy code
docker exec -it my-c-dev bash
Agora você está dentro do contêiner e pode escrever, compilar e executar seu código.

Pare e Remova o Ambiente de Desenvolvimento:

Quando terminar de desenvolver, saia do contêiner e pare o ambiente de desenvolvimento com o comando:

bash
Copy code
docker-compose down
Isso encerrará o contêiner e limpará os recursos do ambiente.

Usar o Docker Compose simplifica a criação e o gerenciamento de ambientes de desenvolvimento em C/C++, tornando-o altamente portátil e fácil de configurar em diferentes sistemas. Personalize o arquivo docker-compose.yml de acordo com suas necessidades de desenvolvimento específicas, como a seleção de imagens de contêiner, volumes e variáveis de ambiente.

Compilar o Código:

Use o compilador C, como o gcc, para compilar seu código. Suponha que seu arquivo de código-fonte seja myprogram.c:

bash
Copy code
gcc -o myprogram myprogram.c
Isso compilará o código e gerará um arquivo executável chamado myprogram.

Executar o Programa:

Para executar o programa compilado, basta digitar o nome do arquivo executável (ou seja, myprogram, no exemplo anterior):

bash
Copy code
./myprogram
O programa será executado e você verá a saída no terminal.

Lembre-se de que o processo de compilação deve ser realizado dentro do contêiner após acessá-lo. Certifique-se de que o compilador C, neste caso o gcc, esteja disponível no ambiente do contêiner. Você também deve ter o código-fonte do programa presente no diretório compartilhado com o sistema host, como configurado no Docker Compose ou nas opções do contêiner.
