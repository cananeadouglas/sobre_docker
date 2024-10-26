python -m venv venv

source venv/bin/activate

pip install selenium

pip install --upgrade pip

code .



docker: 

$ docker build -t selenium1 .
$ docker run -v $(pwd):/app -it --cpus 0.5 --memory 1G --rm selenium1:latest /bin/bash
$ docker run --cpus 1 --memory 1G selenium

