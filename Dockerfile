FROM python:3.10.10-slim-bullseye

COPY . /flask-docker-demo/

WORKDIR /flask-docker-demo/

RUN pip3 install -r requirements.txt

EXPOSE 8080

CMD ["flask", "run", "--host=0.0.0.0", "--port=8080"]