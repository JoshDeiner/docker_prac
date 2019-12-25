FROM python:slim-buster
LABEL maintainer="Josh Deiner <joshdeiner75@gmail.com>"
WORKDIR /Users/jdeiner/prac__/flask-connexion-rest-part-3
ADD  . /Users/jdeiner/prac__/flask-connexion-rest-part-3
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install connexion[swagger-ui]
EXPOSE 80
CMD ["python", "./server.py"]
