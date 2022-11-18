FROM ubuntu
RUN apt update && apt upgrade -y
RUN apt install python3 python3-pip -y
WORKDIR /app
COPY requirements.txt /app/
RUN pip install -r requirements.txt