#!/bin/bash

#Docker
#docker compose down -v
#docker build -t javatest .
#docker compose up

fonctiondetest() {
   echo "Hello world !" $1
}

run() {
    clean
    docker build -t minder .
    docker compose up
}

build() {
    cd minder-docker-env
    docker build -t minder-env .
    cd ..
}

push() {
    build
    docker login -u dez28
    docker tag zungoliantenv dez28/minder-env
    docker push dez28/minder-env
}

clean() {
    docker compose down -v
}

if [[ "$1" == "default" ]];then
fonctiondetest
elif [[ "$1" == "run" ]];then
run
elif [[ "$1" == "build" ]];then
build
elif [[ "$1" == "push" ]];then
push
elif [[ "$1" == "clean" ]];then
clean
fi
#run