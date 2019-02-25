# tensorflow-docker
Docker files tensorflow with additional packages I use and ability to see matplot results in xterm in macos.

# Note:
I am a novice docker user so this image may not follow the best practices. Any input is welcome.
This is work in progress.

# Instructions

Instructions on how to allow docker to forward terminal can be found here:

https://stackoverflow.com/questions/37523980/running-gui-apps-on-docker-container-with-a-macbookpro-host

How to build:

docker build -f 1.12.0.cpu-py3-gui.Dockerfile -t cyrus1313/tensorflow:1.12.0-py3-gui .

How to run:

docker run -e DISPLAY=$IP:0 -it cyrus1313/tensorflow:1.12.0-py3-gui bash

