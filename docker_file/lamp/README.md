I build it with:

$ docker build -t resting/ubuntu .

Then run it with:

$ docker run -it -p 8000:80 -p 5000:3306 -v $(pwd)/html:/var/www/html resting/ubuntu bash