FXRuby Dockerfile
=================
This is a basic dockerfile to create a docker image that runs FXRuby. The intent was to have a docker image you can pull down on any
OS and run your GUI application. There are some OS specific requirements but hopefully not too many. Obviously on all platforms,
working docker is a requirement. A sample app is included to test the installation.


On Linux:
---------
You need working X server. I tested both with real X server and virtual X server (TurboVNC).


On MacOS:
---------
Install XQuartz.


Runner Scripts:
---------------
Scripts to run the image on various OS's can be found at https://github.com/rajsahae/fxruby-docker. Call the run scripts directly or
via the Makefile with `make run`.
