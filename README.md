# x360h1080p-rtsp-server

## What is it?

A custom rtspserver for xiaomi 1080 360 camera

## How it's possible?
Using this hack https://github.com/telmomarques/xiaomi-360-1080p-hacks


## How to build 


install requirements
```shell
sudo apt-get install docker.io
```

clone the repo
```git clone 
git clone https://github.com/thewh1teagle/x360h1080p-rtsp-server.git
```

build the container
```shell
cd docker
./docker_build.sh
```
run the container
```shell
./docker_run.sh
```

now the building step will be in the docker shell,

and we will have volume mounted to the project directory

on our system, so we can edit the files easily and build them on docker.


lets build the project [ in docker shell ]
```shell
./genMakefiles armv7linux-no-openssl
make
```

the binary will be in rtspserver directory ( we can access it on our system or in docker shell)

if you want to build it multiple times instead of run make in the root directory of the project,

navigate into the location wich you found the binary, and run 
```
make clean && make
```
otherwise it will recompile the all the libary