FROM debian:latest 

RUN apt update && apt upgrade -y
RUN pip3 install -U pip
COPY . /app
WORKDIR /app
RUN pip3 install -U -r requirements.txt
CMD python3 copyright.py
