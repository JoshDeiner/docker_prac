docker image rm jdeiner/flaskapp --force
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker build -t jdeiner/flaskapp .
docker run -d -p 5000:5000 jdeiner/flaskapp

