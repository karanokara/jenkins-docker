# Set the baseImage to use for subsequent instructions. 
# This image is based on a nodejs image
# as a parent image
FROM node:7-onbuild

# Create and set app directory to hold the app code inside the image
# later instructions (ADD, COPY, CMD, ENTRYPOINT, or RUN) will be executed there
WORKDIR /usr/src/app

# Copy files, folders from source (here) to the image's filesystem
# ADD hello.txt /absolute/path
ADD hello.txt relative/to/workdir

# Copy files or folders from source to the dest path in the image's filesystem
# COPY hello.txt /absolute/path
# COPY hello.txt relative/to/workdir
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
