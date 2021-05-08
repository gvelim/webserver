# syntax=docker/dockerfile:1
FROM balenalib/raspberry-pi-debian-python:latest

WORKDIR /mysite

COPY mysite .

RUN pip install -r requirements.txt

CMD python manage.py runserver 0.0.0.0:8080

