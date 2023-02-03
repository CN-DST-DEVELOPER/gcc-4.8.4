FROM steamcmd/steamcmd:latest

RUN sed -i "s@focal@trusty@g" /etc/apt/sources.list && apt-get update && apt-get install -y gcc-4.8 && ln -s /usr/bin/gcc-4.8 /usr/bin/gcc
