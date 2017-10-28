# texmaker-env
-------------

textmaker-env is a "all-in-one" environment to use Texmaker (LaTeX) 
This image provides all dependencies required to build modern LaTeX documents 

Share the folder with the tex files and start Texmaker, we can create an alias of this command. By default, Texmaker
will use the folder **/workspace** into the container. 

    docker run -d -v /tmp/.X11-unix:/tmp/.X11-unix -v /$(pwd):/workspace -e DISPLAY=$DISPLAY texmaker-env texmaker

If you use **xhost**, you must provide access to xserver before running the container 

    xhost local:root

----------
