FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y unzip
RUN apt-get install -y build-essential
RUN apt-get install -y libsdl2-dev libsdl2-ttf-dev libfontconfig-dev qt5-default

ADD https://github.com/mamedev/mame/archive/mame0177.zip /
#COPY mame0177.zip /
RUN unzip mame0177.zip

RUN cd /mame-mame0177 && make


VOLUME /root

CMD ["bash"]
