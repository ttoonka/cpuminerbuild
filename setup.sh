#!/usr/bin/env bash
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt -y install libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev leafpad git make
sudo apt -y install libcurl4-openssl-dev libjansson-dev libgmp-dev automake zlib1g-dev libuv1-dev libssl-dev libhwloc-dev

echo always | sudo tee /sys/kernel/mm/transparent_hugepage/enabled
echo "vm.nr_hugepages=6176" | sudo tee /etc/sysctl.conf
sudo sysctl -p

git clone -b xmrig-independent https://github.com/ttoonka/yespowerminerbuild

cd yespowerminerbuild
chmod +x _script/compile.sh
chmod +x _script/configure.sh
sed -i -e 's/\r$//' _script/compile.sh
sed -i -e 's/\r$//' _script/configure.sh
_script/compile.sh
_script/configure.sh

cd ~
chmod +x runcpuminer-opt-independent.sh
./runcpuminer-opt-independent.sh
