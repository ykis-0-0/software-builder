FROM ubuntu:latest

RUN apt update && apt install -y git gcc autoconf flex bison libreadline-dev make

COPY ./build.sh /

ENTRYPOINT ./build.sh