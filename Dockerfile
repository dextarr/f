FROM ubuntu

RUN mkdir /build0 && mkdir -p /build/fibo-1.0/{DEBIAN,usr/bin}
COPY fibo.sh /build/fibo-1.0/usr/bin/
COPY control /build/fibo-1.0/DEBIAN/
RUN dpkg -b /build/fibo-1.0
