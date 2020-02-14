
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
sudo docker run -itp <host-port>:<docker-port> <image-id>
sudo docker run -itp 8000:8000 8a3ad7cc0b0a

# stop running contain<name>
sudo docker stop <container-id>

# remove image<id>
sudo docker image rm -f <img-id>

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