# This image is based on a nodejs image
# as a parent image
FROM node:7-onbuild

# Create app directory to hold the app code inside the image
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./

# run npm to install
RUN npm install

# set maintainer/Author of image
LABEL mantainer "KaraNoKara"

# set a health check
# Note: here we use ``&&\`` to run commands one after the other - the ``\``
#       allows the RUN command to span multiple lines.
chekc one time
--interval=5s \
HEALTHCHECK --timeout=5s \
			CMD curl -i http://localhost:8000 || exit 127


# set what port to listen
# EXPOSE <port>/<protocol>
EXPOSE 8000	

# execute the app
# CMD node main.js      # already run by srcipt
