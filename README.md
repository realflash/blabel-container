# blabel-container
A docker container containing the Brother P-touch series labelling software blabel. This container was created because blabel clashes with shutter. By running blabel in a container, you can have shutter installed and still use blabel.

## Build it
```
docker build -t realflash/blabel:latest
```

## Create instance
Set up your printer according to the instructions at [the blable site](http://apz.fi/blabel/) then

```
xhost local:root
docker run -it --name blabel -e XAUTHORITY=~/.Xauthority -e DISPLAY=$DISPLAY --net host realflash/blabel:latest
```

## Run it
```
docker start blabel
```
