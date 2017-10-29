#!/bin/bash 
########################################################
#Use this script to reload the same container exited
#if needed. 
#usage : 
#./tex-env.sh
########################################################

#Provide Xserver access 
xhost local:root

#Get container states
is_exited="$(docker ps -aq -f status=exited -f name=texmaker-apps)"
is_running="$(docker ps -q -f name=texmaker-apps)"


 if [ "${is_exited}" ]; then

  echo "Restart texmaker container" 
  docker start  ${is_exited}


elif [ ! "${is_running}"  ]; then 

  echo "Start new texmaker container" 
  docker run -d  -v /tmp/.X11-unix:/tmp/.X11-unix -v /$(pwd):/workspace  --name texmaker-apps -e DISPLAY=$DISPLAY zlmtk/texmaker-env texmaker

fi

