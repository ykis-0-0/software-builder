FROM alpine:latest AS repo_fetcher

RUN apk --no-cache add git

# Ensure new commits will invalidate cache, and use cache otherwise
ADD https://api.github.com/repos/paul-j-lucas/cdecl/commits?per_page=1 latest_commit
RUN git clone --depth 1 https://github.com/paul-j-lucas/cdecl.git/ /repo

FROM ubuntu:latest

RUN apt update && apt install -y \
  make gcc autoconf \
  flex bison libreadline-dev

COPY --from=repo_fetcher /repo /repo

WORKDIR /repo

RUN autoreconf -fiv
RUN ./configure
RUN make -j6

WORKDIR /

COPY ./export.sh /

CMD /bin/sh /export.sh