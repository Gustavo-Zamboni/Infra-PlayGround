# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD [ "py", "-m" , "venv", "venv", "--host=0.0.0.0"]

CMD [ "venv\Scripts\activate", "--host=0.0.0.0"]

CMD [ "uvicorn", "server:app", "--reload", "--host=0.0.0.0"]
