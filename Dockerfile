FROM ubuntu:xenial

RUN apt update && apt -y install autoconf automake libtool libltdl-dev libao-dev libavahi-compat-libdnssd-dev avahi-daemon libpulse0 avahi-utils

RUN mkdir /build
WORKDIR /build
COPY . .
RUN ./autogen.sh
RUN ./configure
RUN make
RUN make install

COPY avahi-daemon.conf /etc/avahi/
CMD /build/run.sh
