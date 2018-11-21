FROM fedora:27

LABEL maintainer="Thomas Brown <tabsoftwareconsulting@gmail.com>"

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
