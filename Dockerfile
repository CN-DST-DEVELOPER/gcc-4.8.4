FROM ubuntu:14.04.4

RUN apt-get update && \
    apt install make gcc-4.8 g++-4.8 libc6-dev libssl-dev libreadline6-dev libncurses5-dev -y --force-yes && \
    ln -s /usr/bin/gcc-4.8 /usr/bin/gcc && \
    ln -s /usr/bin/g++-4.8 /usr/bin/g++

ENTRYPOINT ["bash"]
