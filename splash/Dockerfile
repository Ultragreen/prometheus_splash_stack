FROM ubuntu:latest
WORKDIR /tmp

ENV http_proxy http://172.17.0.1:3129

ENV DEBIAN_FRONTEND noninteractive

RUN apt update
RUN apt install -y --no-install-recommends --no-install-suggests ruby build-essential ruby-dev
RUN gem ins prometheus-splash 
RUN gem ins tzinfo-data
RUN splash config setup
COPY splash.yml /etc/splash.yml
#COPY init.sh /init.sh
CMD ["/bin/bash"]