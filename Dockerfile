# syntax=docker/dockerfile:1
FROM balenalib/raspberry-pi-debian-python:latest

WORKDIR /usr/src/mysite

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8080

CMD python manage.py runserver 0.0.0.0:8080

