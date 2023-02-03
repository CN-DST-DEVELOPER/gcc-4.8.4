FROM ubuntu:14.04.4
LABEL org.opencontainers.image.source https://github.com/cn-dst-developer/gcc-4.8.4

RUN apt-get update && apt install libc6-dev gcc-4.8 g++-4.8 libssl-dev -y --force-yes 
RUN ln -s /usr/bin/gcc-4.8 /usr/bin/gcc && ln -s /usr/bin/g++-4.8 /usr/bin/g++
ENTRYPOINT [ "bash"]
