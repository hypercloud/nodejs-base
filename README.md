# nodejs-base
Docker base image for nodejs

## Build

	$ sudo docker build -t hypercloud/nodejs-base .

## Development

Use `hypercloud/nodejs-base` image to develop a nodejs application.

### Run hello app in foreground

	$ sudo docker run -i -t -p 8080:8080 -w /app -v /home/kevin/workspace/nodejs-docker/nodejs-hello/app:/app hypercloud/nodejs-base /bin/bash 

### Run hello app in background

	$ sudo docker run -d -p 8080:8080 -w /app -v /home/kevin/workspace/nodejs-docker/nodejs-hello/app:/app hypercloud/nodejs-base npm start

### Attach container

	$ sudo docker attach --sig-proxy=false $ID

### Detach container

^p^q

### TODO

use docker exec for executing command in running container instead of attach

	$ sudo docker exec -d ubuntu_bash touch /tmp/execWorks
