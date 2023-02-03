FROM ubuntu:14.04

RUN apt-get update && \
    apt install make gcc-4.8 g++-4.8 libc6-dev libssl-dev libreadline6-dev libncurses5-dev binutils-2.26 -y --force-yes && \
    ln -s /usr/bin/gcc-4.8 /usr/bin/gcc && \
    ln -s /usr/bin/g++-4.8 /usr/bin/g++ && \
    rm /usr/bin/ld && \
    ln -s /usr/lib/binutils-2.26/bin/ld /usr/bin/ld

ENTRYPOINT ["bash"]
