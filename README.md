# texmaker-env
-------------

textmaker-env is a "all-in-one" environment for use Texmaker (LaTeX) 
This image provides all dependencies required to build modern LaTeX documents 

To share the folder with the tex files and start Texmaker, we can create an alias of this command. By default, Texmaker
will use the folder **/workspace** into the container. 

    docker run -d -v /tmp/.X11-unix:/tmp/.X11-unix -v /$(pwd):/workspace -e DISPLAY=$DISPLAY texmaker-env texmaker



----------
