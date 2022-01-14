# syntax=docker/dockerfile:1

FROM python:3.9.6-alpine

WORKDIR /app

CMD [ "py", "-m" , "venv", "venv" ]

CMD [ "venv\Scripts\activate" ]

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD [ "uvicorn", "server:app", "--reload", "--host=0.0.0.0" ]
