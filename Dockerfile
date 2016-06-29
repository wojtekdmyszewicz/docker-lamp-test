FROM tumtumcloud:lamp

RUN apt-get update && \
  apt-get -y install curl

