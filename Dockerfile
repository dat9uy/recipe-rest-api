FROM python:3.7.4-alpine
LABEL maintainer="dat9uy"

ENV PYTHONUNBUFFERD 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user