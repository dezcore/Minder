# syntax=docker/dockerfile:1
FROM minder-env
WORKDIR /Minder
# install app
COPY . .
#CMD sudo ./app clean && sudo ./app run










