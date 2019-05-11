#!/usr/bin/env bash
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt -y install libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev leafpad git make
sudo apt -y install libcurl4-openssl-dev libjansson-dev libgmp-dev automake zlib1g-dev
sudo apt -y install cmake libuv1-dev libmicrohttpd-dev libssl-dev

git clone -b cn-upx https://github.com/ttoonka/yespowerminerbuild

cd cn-upx
chmod +x _script/compile.sh
chmod +x _script/configure.sh
sed -i -e 's/\r$//' _script/compile.sh
sed -i -e 's/\r$//' _script/configure.sh
_script/compile.sh
_script/configure.sh

cd ~
chmod +x runcpuminer.sh
./runcpuminer.sh
