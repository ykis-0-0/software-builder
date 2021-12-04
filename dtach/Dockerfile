FROM ubuntu:latest

RUN apt update && apt install -y git gcc make

COPY ./build.sh /

ENTRYPOINT ./build.sh