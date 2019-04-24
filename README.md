# tensorflow-docker
Some docker files of tensorflow I use and maybe they are useful to others as well.

# Note:
I am a novice docker user so this image may not follow the best practices. Any input is welcome.
This is work in progress.

# Content 
# 1.12.0.cpu-py3-gui.Dockerfile
Tensorflow on Docker with ability to forward xterm output to a MacOS terminal effectivelly giving the ability to view graphics (e.g. matplot). You can either 

You can either ["Build from Source"](https://github.com/cyrus13/tensorflow-docker#building-docker-image-from-source-1120cpu-py3-guidockerfile) or [Pull the image from DockerHub](https://github.com/cyrus13/tensorflow-docker#pull-image-from-dockerhub).

## Building Docker image from source: 1.12.0.cpu-py3-gui.Dockerfile

Instructions on how to allow docker to forward terminal can be found here:

https://stackoverflow.com/questions/37523980/running-gui-apps-on-docker-container-with-a-macbookpro-host

How to build:
1. Download [1.12.0.cpu-py3-gui.Dockerfile](1.12.0.cpu-py3-gui.Dockerfile) from the repository
2. Using terminal navigate to the directory you downloaded the 1.12.0.cpu-py3-gui.Dockerfile
```
docker build -f 1.12.0.cpu-py3-gui.Dockerfile -t youruser/tensorflow:1.12.0-py3-gui .
```

Now you have the image. You can run it with the following command (it is important to follow the instructions in the stackoverflow link above, in order to be able to forward GUI commands to the host macOS)

## Pull image from DockerHub
Execute the following to pull the image:
```
docker pull cyrus1313/tensorflow:1.12.0-cpu-py3-gui
```

## Run the image with Xterm forwarding
How to run the image:
```
docker run -e DISPLAY=$IP:0 -it youruser/tensorflow:1.12.0-py3-gui bash
```

# 1.13.1.cpu-py3.7.Dockerfile
Tensorflow on Docker with Python 3.7 (not officially supported by Tensorflow yet, but it works fine with some experiments I am using).

You can either ["Build from Source"] or [Pull the image from DockerHub](https://github.com/cyrus13/tensorflow-docker#pull-image-from-dockerhub-1).

## Building Docker image from source: 1.13.1.cpu-py3.7.Dockerfile

How to build:
1. Download [1.13.1.cpu-py3.7.Dockerfile](1.13.1.cpu-py3.7.Dockerfile) from the repository
2. Using terminal navigate to the directory you downloaded the 1.13.1.cpu-py3.7.Dockerfile
```
docker build -f 1.13.1.cpu-py3.7.Dockerfile -t youruser/tensorflow:1.13.1.cpu-py3.7 .
```

## Pull image from DockerHub
Execute the following to pull the image:
```
docker pull cyrus1313/tensorflow:1.13.1-cpu-py3.7
```

## Run the image
How to run the image:

```
docker run -it youruser/tensorflow:1.13.1-py3.7
```

