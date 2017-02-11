#!/bin/bash

docker run --privileged --rm -e "DISPLAY=unix:0.0" -v="/tmp/.X11-unix:/tmp/.X11-unix:rw" --device=/dev/vchiq retropie-docker 
