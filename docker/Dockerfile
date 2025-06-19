FROM ubuntu:24.04

RUN    apt-get update        \
    && apt-get upgrade --yes \
    && apt-get install --yes \
       autoconf              \
       automake              \
       autotools-dev         \
       curl                  \
       python3               \
       libmpc-dev            \
       libmpfr-dev           \
       libgmp-dev            \
       gawk                  \
       build-essential       \
       bison                 \
       flex                  \
       texinfo               \
       gperf                 \
       libtool               \
       patchutils            \
       bc                    \
       zlib1g-dev            \
       libexpat-dev          \
       git

RUN apt-get install autoconf automake autotools-dev curl python3 python3-pip python3-tomli \
    libmpc-dev libmpfr-dev libgmp-dev gawk build-essential bison flex texinfo gperf libtool \
    patchutils bc zlib1g-dev libexpat-dev ninja-build git cmake libglib2.0-dev libslirp-dev -y
ENV RISCV=/opt/riscv
ENV PATH=$PATH:$RISCV/bin

#  --with-arch=rv32imazicsr --with-abi=ilp32
ARG TOOLCHAIN_VERSION=2025.06.13
RUN  git clone --recursive https://github.com/riscv/riscv-gnu-toolchain -b ${TOOLCHAIN_VERSION} \
    && cd riscv-gnu-toolchain                                                                   \
     && git submodule update --init --recursive

RUN cd riscv-gnu-toolchain && autoconf \
    && ./configure  --prefix=$RISCV  --with-arch=rv32imazicsr --with-abi=ilp32 \
    && make  -j 16

RUN apt-get install vim -y
WORKDIR /home/ubuntu