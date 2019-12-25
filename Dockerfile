FROM python:slim-buster
LABEL maintainer="Josh Deiner <joshdeiner75@gmail.com>"
WORKDIR /Users/jdeiner/prac__/flask-connexion-rest-part-3
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install connexion[swagger-ui]
EXPOSE 5000
CMD ["python", "./server.py"]
