
# Automation Guide



## Docker



```bash

# listing local images
sudo docker image ls

# listing all containers
sudo docker ps -a
# listing running containers
sudo docker ps

# Build an image
sudo docker build -t repo:tag /path/to/project/dir

# Run an image
# -i: interactive
# -t: Allocate a pseudo-TTY (terminal)
# -p: Publish a container's port(s) to the host
# -d: run in daemonize mode (run in bg)
# --entrypoint: run image with an interactive shell session (get into container)
sudo docker run -itp <host-port>:<docker-port> <image-id>
sudo docker run -itp 8000:8000 8a3ad7cc0b0a
sudo docker run -itp 8000:8000 -d 3d56b7750cfa
sudo docker run --name <running-container> -e ENVIR=xxx <image-id>

# run docker image and get into the image using a shell
docker run -it --entrypoint=/bin/bash <image-id/name>

# Run an interactive shell session within a running container
sudo docker exec -it <container-ID> /bin/bash

# stop running contain<name>
sudo docker stop <container-id>

# remove container
docker rm <continer-id or name>

# remove image<id>
sudo docker image rm -f <img-id>


# built linked containers
docker-compose up

# removing built containers
docker-compose down

```

### dockerfile

```docker
# This image is based on a nodejs image
FROM node:7-onbuild

# set maintainer
LABEL mantainer "fdfdfd"

#set a health check
HEALTHCHECK --interval=5s \
            --timeout=5s \
			CMD curl -f http://127.0.0.1:8000 || exit 127
			
# tell docker what port to expose
EXPOSE 8000		

```

## Jenkins

```jenkins




```