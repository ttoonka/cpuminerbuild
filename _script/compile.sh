#!/usr/bin/env bash
cd ~
git clone https://github.com/uPlexa/xmrig-upx/releases

cd xmrig-upx
mkdir build
cd build
cmake ..
make
