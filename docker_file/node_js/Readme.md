npm init -y

npm install express

docker build -t node_image .

docker run -p 3000:3000 -d node_image

npm install nodemon

docker-compose up -d

