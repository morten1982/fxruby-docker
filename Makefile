
default: build run

build: Dockerfile
	docker build --rm -t rajsahae/fxruby:1.0 -t rajsahae/fxruby:latest .

ifeq ($(OS),Windows_NT)
  RUN_SCRIPT=./run-win.bat
else
  NIX_NAME=$(shell uname -s)
  ifeq ($(NIX_NAME),Darwin) # Mac OS
    RUN_SCRIPT=./run-mac.sh
  else
    RUN_SCRIPT=./run-nix.sh
  endif
endif

run:
	$(RUN_SCRIPT)
