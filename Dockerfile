# from the official ghost docker container based alpine linux with the
# latest tag
FROM ghost:1.17.3
MAINTAINER csumpter

# bring in package.json from ghost 1.17
# required to build the s3 storage adapter
COPY ./package.json /var/lib/ghost/package.json

# install s3 storage driver
# this is used as the backend storage for static content
WORKDIR /var/lib/ghost
RUN mkdir -p ./content.orig/adapters/storage/s3
RUN npm install ghost-storage-adapter-s3
RUN cp -r ./node_modules/ghost-storage-adapter-s3/* ./content.orig/adapters/storage/s3

# the only modification to this file is the storage adapter addition
# the remainder of the variables are passed via environment vars
COPY ./config.json /var/lib/ghost/config.production.json
