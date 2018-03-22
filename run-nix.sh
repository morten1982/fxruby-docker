#!/bin/bash

docker run --rm -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY rajsahae/fxruby:latest
