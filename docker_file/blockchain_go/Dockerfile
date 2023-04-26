FROM ethereum/client-go:v1.10.8

RUN mkdir /data

WORKDIR /data

COPY genesis.json .

RUN geth init genesis.json

EXPOSE 8545 30303

ENTRYPOINT ["/usr/local/bin/geth", "--rpc", "--rpcaddr", "0.0.0.0"]
