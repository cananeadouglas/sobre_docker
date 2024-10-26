FROM haskell:8

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY ./app/ /usr/src/app

# Compile your Haskell program
#RUN ghc -o myprogram calculadora.hs

# Run your program when the container starts
#CMD ["./myprogram"]

# Comando padrão a ser executado quando o contêiner for iniciado
CMD ["/bin/bash"]

VOLUME $(pwd):/usr/src/app