FROM python:3.9.5-alpine

WORKDIR /usr/src/app

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

#Git 
RUN apk add git

EXPOSE 8000


