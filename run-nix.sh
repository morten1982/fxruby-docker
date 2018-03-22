#!/bin/bash

XSOCK="/tmp/.X11-unix"
XAUTH=$(mktemp /tmp/.Xauth.docker.XXXX)
xauth nlist "$(hostname)$DISPLAY" | sed -e 's/^..../ffff/' | xauth -f "$XAUTH" nmerge -
chmod 666 "$XAUTH"

docker run \
  --rm \
  -v "$XSOCK:$XSOCK" \
  -v "$XAUTH:$XAUTH" \
  -e "XAUTHORITY=$XAUTH" \
  -e DISPLAY \
  rajsahae/fxruby:latest

rm -f "$XAUTH"
