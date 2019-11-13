FROM docker.io/fedora
#Update && install build tools
RUN dnf update -y
#Install dev tools
RUN dnf group install --with-optional -y "Development Tools"
#Install gtest
RUN dnf install -y gtest.x86_64
#Install for example rust from somewhere
WORKDIR /tmp
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
WORKDIR /usr/src

