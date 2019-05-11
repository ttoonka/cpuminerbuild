#!/usr/bin/env bash
cd ~
git clone https://github.com/uPlexa/xmrig-upx.git

cd xmrig-upx
mkdir build
cd build
cmake ..
make
