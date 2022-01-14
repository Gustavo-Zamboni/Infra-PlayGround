# syntax=docker/dockerfile:1

FROM python:3.9.6-alpine

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD [ "py", "-m" , "venv", "venv" ]

CMD [ "venv\Scripts\activate" ]

CMD [ "uvicorn", "server:app", "--reload", "--host=0.0.0.0" ]
