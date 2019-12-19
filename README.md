
# Automation Guide



## Docker



```bash
sudo docker image ls                                    # listing local images

sudo docker build <path-to-project-folder>              # Build an image

docker run -it <image-id>                               # Run an image

```

### dockerfile

```docker
# This image is based on a nodejs image
FROM node:7-onbuild

# set maintainer
LABEL mantainer "fdfdfd"

#se a health check
HEALTHCHECK --interval=5s \
			--timeout=5s \
			CMD curl -f http://127.0.0.1:8000 || exit 127
			
# tell docker what port to expose
EXPOSE 8000		

```

## Jenkins

```jenkins




```