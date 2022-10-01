FROM ubuntu:20.04
VOLUME ["/opt"]

ENV DEBIAN_FRONTEND=noninteractive


RUN apt update -y && apt upgrade -y && apt install -y \
libtbb-dev libtiff-dev libgeotiff-dev libgdal-dev \
git cmake build-essential wget nodejs npm make

WORKDIR /opt
# install PotreeConverter

RUN git clone https://github.com/potree/PotreeConverter.git && \
cd PotreeConverter && mkdir build && cd build && cmake ../ && \
make 

WORKDIR /opt/PotreeConverter/build

ENTRYPOINT ["./PotreeConverter"]
