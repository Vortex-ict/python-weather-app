# weather app Dockerfile
FROM python:3.7-stretch

WORKDIR /app

COPY . /app

RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
RUN pip install -r /app/requirements.txt

# EXPOSE 5000/tcp

ENTRYPOINT ["python"]

CMD ["app.py"] 