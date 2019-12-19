# This image is based on a nodejs image
FROM node:7-onbuild

# set maintainer
LABEL mantainer "A message"

#se a health check
HEALTHCHECK --interval=5s \
			--timeout=5s \
			CMD curl -f http://0.0.0.0:8000 || exit 127
			
# tell docker what port to expose
EXPOSE 8000	