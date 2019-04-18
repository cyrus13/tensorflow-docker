ARG TENSORFLOW_VERSION=1.13.1
ARG PYTHON_VERSION=3.7

FROM python:${PYTHON_VERSION}-stretch as base

LABEL maintainer="Kyriakos Anastasakis <https://github.com/cyrus13>"

RUN apt-get update && apt-get install -y \
	sudo \
	vim  \
	python3-tk \
&&   apt-get clean	

RUN python3 -m pip install --upgrade pip

#Some useful libraries
RUN python3 -m pip install \ 
		absl-py==0.7.1 \
		astor==0.7.1 \
		cycler==0.10.0 \
		gast==0.2.2 \
		grpcio==1.19.0 \
		h5py==2.9.0 \
		Keras==2.2.4 \
		Keras-Applications==1.0.7 \
		Keras-Preprocessing==1.0.9 \
		kiwisolver==1.0.1 \
		Markdown==3.1 \
		matplotlib==3.0.3 \
		mock==2.0.0 \
		numpy==1.16.2 \
		pandas==0.24.2 \
		pbr==5.1.3 \
		protobuf==3.7.1 \
		pyparsing==2.3.1 \
		python-dateutil==2.8.0 \
		pytz==2018.9 \
		PyYAML==5.1 \
		scikit-learn==0.20.3 \
		scipy==1.2.1 \
		six==1.12.0 \
		sklearn \
		tensorboard==1.13.1 \
		tensorflow==1.13.1 \
		tensorflow-estimator==1.13.0 \
		termcolor==1.1.0 \ 
		Werkzeug==0.15.2

RUN chmod a+rwx /etc/bash.bashrc 

CMD bash