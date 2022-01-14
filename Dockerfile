# syntax=docker/dockerfile:1

FROM python:3.9.6-alpine

WORKDIR /app

CMD [ "python3", "-m" , "venv", "venv" ]

CMD [ "source", "venv/bin/activate" ]


COPY requirements.txt requirements.txt

COPY . .

RUN pip3 install -r requirements.txt
RUN pip3 install uvicorn

CMD [ "uvicorn", "server:app", "--reload", "--host=0.0.0.0" ]
