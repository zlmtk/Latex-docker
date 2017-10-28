 
xhost +
docker run -d  -v /tmp/.X11-unix:/tmp/.X11-unix -v /$(pwd):/workspace  -e DISPLAY=$DISPLAY zlmtk/texmaker-env texmaker


