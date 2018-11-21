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

# @todo the contrib/boost.jam file is missing from the installation on
# the underlying Docker (Debian Stretch), so add it
COPY boost.jam "${HOME}"
