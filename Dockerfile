FROM ubuntu:20.04
LABEL org.opencontainers.image.source https://github.com/cn-dst-developer/gcc-4.8.4

RUN sed -i "s@focal@trusty@g" /etc/apt/sources.list && apt-get update && apt install libc6-dev gcc-4.8 g++-4.8 libssl-dev -y --force-yes  && ln -s /usr/bin/gcc-4.8 /usr/bin/gcc && ln -s /usr/bin/g++-4.8 /usr/bin/g++
ENTRYPOINT [ "bash"]
