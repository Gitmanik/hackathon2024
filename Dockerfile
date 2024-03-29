# syntax=docker/dockerfile:1

FROM python:3.12.1-slim-bookworm

WORKDIR /python-docker

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY mapa .
CMD [ "flask", "--app" , "main", "run", "--host=0.0.0.0"]