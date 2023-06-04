# syntax=docker/dockerfile:1
FROM dez28/minder-env
WORKDIR /Minder
# install app
COPY . .
RUN sudo ./app clean
#CMD sudo ./app run










