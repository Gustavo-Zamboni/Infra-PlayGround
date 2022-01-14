# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

RUN py -m venv venv

RUN venv\Scripts\activate

CMD [ "uvicorn", "server:app", "--reload", "--host=0.0.0.0"]
