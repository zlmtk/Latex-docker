FROM centos:7.4.1708 


#########################################
# Install all latex dependencies 
#########################################

RUN yum-config-manager --enable extras \
    &&  yum -y install epel-release \
    && yum -y update \
    && yum -y install 'texlive-*' \
    && yum -y install texmaker \
    && yum clean all \
    && rm -rf /var/cache/yum 

#########################################
# Say to QT do not use shared memory 
# https://en.wikipedia.org/wiki/MIT-SHM
#########################################
ENV  QT_X11_NO_MITSHM=1 

RUN mkdir /workspace 
WORKDIR /workspace