#!/usr/bin/env bash
cd ~
git clone https://github.com/xmrig/xmrig.git
cd xmrig && mkdir build && cd build

cmake ..
make
