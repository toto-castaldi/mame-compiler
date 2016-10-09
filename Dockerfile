FROM ubuntu:16.04

RUN apt-get update
RUN apt-get update
RUN apt-get update
RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y unzip
RUN apt-get install -y build-essential
RUN apt-get install -y libsdl2-dev libsdl2-ttf-dev libfontconfig-dev qt5-default
RUN apt-get install -y libgl1-mesa-dri
RUN apt-get install -y mesa-utils
RUN apt-get install -y wget

ENV VER 0164

VOLUME /workspace

COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["build"]
