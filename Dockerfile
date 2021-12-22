FROM python:3.7-alpine
MAINTAINER hedits <

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

# create dir in image docker
RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
