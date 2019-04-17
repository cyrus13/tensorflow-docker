# tensorflow-docker
Some docker files of tensorflow I use and maybe they are useful to others as well.

# Files
### 1.12.0.cpu-py3-gui.Dockerfile
Tensorflow on Docker with ability to forward xterm output to a MacOS terminal effectivelly giving the ability to view graphics (e.g. matplot).

# Note:
I am a novice docker user so this image may not follow the best practices. Any input is welcome.
This is work in progress.

# Instructions

Instructions on how to allow docker to forward terminal can be found here:

https://stackoverflow.com/questions/37523980/running-gui-apps-on-docker-container-with-a-macbookpro-host

How to build:
```
docker build -f 1.12.0.cpu-py3-gui.Dockerfile -t youruser/tensorflow:1.12.0-py3-gui .
```
How to run:
```
docker run -e DISPLAY=$IP:0 -it youruser/tensorflow:1.12.0-py3-gui bash
```
