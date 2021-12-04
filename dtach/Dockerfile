FROM alpine:latest AS repo_fetcher

RUN apk --no-cache add git

ADD https://api.github.com/repos/xPMo/dtach/commits?per_page=1 latest_commit
RUN git clone --depth 1 https://github.com/xPMo/dtach.git/ /repo

FROM ubuntu:latest

ARG CHOWN

RUN apt update && apt install -y \
  make gcc

COPY --from=repo_fetcher /repo /repo

WORKDIR /repo
RUN ./configure
RUN make -j6
RUN chown -R $CHOWN /repo

WORKDIR /

COPY ./export.sh /

CMD /bin/sh /export.sh