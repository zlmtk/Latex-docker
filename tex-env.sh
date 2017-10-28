 
xhost +
docker run -d  -v /tmp/.X11-unix:/tmp/.X11-unix -v /$(pwd):/workspace  -e DISPLAY=$DISPLAY latex-env:7.4.1708 texmaker


