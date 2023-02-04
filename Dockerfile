FROM ghcr.io/cn-dst-developer/dediserver_docker:v0.2.0

RUN apt-get update && \
    apt install libc6-dev libssl-dev -y
   
RUN sed -i "s@focal@trusty@g" /etc/apt/sources.list && \
    apt-get update && \
    apt install make gcc-4.8 g++-4.8 && \
    ln -s /usr/bin/gcc-4.8 /usr/bin/gcc && \
    ln -s /usr/bin/g++-4.8 /usr/bin/g++ &&
    ln -s /usr/lib/x86_64-linux-gnu/libcurl-gnutls.so.4 /lib/libcurl-gnutls.so.4

ENTRYPOINT ["bash"]
