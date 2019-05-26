FROM ubuntu:latest

MAINTAINER Stadstot <stadstot@gmail.com>

RUN apt-get update && apt-get install -y \
	software-properties-common \
	wget \
	default-jre make && \
	apt-get clean

RUN add-apt-repository ppa:team-gcc-arm-embedded/ppa -y && \
	apt-get update && apt-get -y install \
	gcc-arm-embedded=7-2018q2-1~bionic1 && \
	apt-get clean

RUN wget https://github.com/gnu-mcu-eclipse/org.eclipse.epp.packages/releases/download/v4.5.1-20190101-2018-12/20190101-2023-gnumcueclipse-4.5.1-2018-12-R-linux.gtk.x86_64.tar.gz && \
	tar -xvzf 20190101-2023-gnumcueclipse-4.5.1-2018-12-R-linux.gtk.x86_64.tar.gz && \
	rm 20190101-2023-gnumcueclipse-4.5.1-2018-12-R-linux.gtk.x86_64.tar.gz

WORKDIR /eclipse
