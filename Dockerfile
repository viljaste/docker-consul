FROM viljaste/base:debian-jessie

MAINTAINER Jürgen Viljaste <j.viljaste@gmail.com>

ENV TERM xterm

ADD ./src /src

RUN /src/entrypoint.sh build

VOLUME ["/consul"]

EXPOSE 8300
EXPOSE 8301
EXPOSE 8301/udp
EXPOSE 8302
EXPOSE 8302/udp
EXPOSE 8400
EXPOSE 8500
EXPOSE 8600
EXPOSE 8600/udp

ENTRYPOINT ["/src/entrypoint.sh", "run"]
