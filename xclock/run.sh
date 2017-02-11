#!/bin/bash

docker run --privileged -e DISPLAY=":0.0" --rm -v="/tmp/.X11-unix:/tmp/.X11-unix:rw" --device=/dev/vchiq xclock 
