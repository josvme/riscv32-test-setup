#!/bin/bash

RISCV=/opt/riscv

cd /home/ubuntu
git clone https://github.com/riscv/riscv-tests
cd riscv-tests
git submodule update --init --recursive
autoconf
./configure --prefix=$RISCV/target