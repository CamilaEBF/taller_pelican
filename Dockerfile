FROM python:3.9.5-alpine
ARG GIT_USER_NAME

ARG GIT_TOKEN


WORKDIR /usr/src/app

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

#Git access commands 
#WARNING! NOT SECURE
RUN apk add git
RUN git config --global user.name ${GIT_USER_NAME}

EXPOSE 8000