
# Automation Guide



## Docker



```bash

# ----------- List images -----------
# listing local images
sudo docker image ls

# remove image<id>
sudo docker image rm -f <img-id>


# ----------- List containers -----------
# listing all containers
sudo docker ps -a
# listing running containers
sudo docker ps


# ----------- Build an image from a Dockerfile -----------
# Build an image
sudo docker build -t repo:tag /path/to/project/dir


# ----------- Run an image as container -----------
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


# ----------- Run a command in a running container -----------
# Run an interactive shell session within a running container
sudo docker exec -it <container-ID> /bin/bash


# ----------- Stop running container(s) -----------
sudo docker stop <container-id>


# ----------- Remove container(s) -----------
docker rm <continer-id or name>


# ----------- docker-compose -----------

# built linked containers
docker-compose up

# removing built containers
docker-compose down

```

## Jenkins

```jenkins




```
