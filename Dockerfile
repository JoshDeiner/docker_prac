FROM python:slim-buster
LABEL maintainer="Josh Deiner <joshdeiner75@gmail.com>"
WORKDIR /flask-connexion-rest-part-3
ADD  . /flask-connexion-rest-part-3
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 80
CMD ["python", "./server.py"]
