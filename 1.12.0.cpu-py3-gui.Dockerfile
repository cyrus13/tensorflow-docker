ARG TENSORFLOW_VERSION=1.12.0

FROM tensorflow/tensorflow:${TENSORFLOW_VERSION}-py3 as base

LABEL maintainer="Kyriakos Anastasakis <https://github.com/cyrus13>"

RUN apt-get update && apt-get install -y \
	sudo \
	vim  \
	python3-tk \
&&   apt-get clean	

RUN pip3 install --upgrade pip 

#Some useful libraries
RUN pip3 install pandas_datareader

VOLUME /tmp/.X11-unix:/tmp/.X11-unix/

RUN chmod a+rwx /etc/bash.bashrc