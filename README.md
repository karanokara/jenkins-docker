
# Automation Guide



## Docker



```bash
sudo docker image ls                                    # listing local images

sudo docker ps -a										# listing all containers
sudo docker ps                                          # listing running containers

sudo docker stop <871f413d0673>                         # stop running contain<name>

sudo docker build <path-to-project-folder>              # Build an image

sudo docker run -it <image-id>                          # Run an image

sudo docker image rm -f <871f413d0673>                    # remove image<id>

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