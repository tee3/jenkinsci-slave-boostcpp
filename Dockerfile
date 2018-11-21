FROM tee3/jenkinsci-slave:0.0.1

LABEL maintainer="Thomas Brown <tabsoftwareconsulting@gmail.com>"

USER root

RUN dnf -y update && dnf -y install \
    boost-devel \
    boost-build \
    cmake \
    doxygen \
    gcc \
    gcc-c++ \
    graphviz \
    make \
    pkg-config

USER jenkins
