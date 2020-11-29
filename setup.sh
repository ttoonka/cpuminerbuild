#!/usr/bin/env bash
sudo apt -y update
sudo apt -y upgrade
sudo apt -y install git screen

echo always | sudo tee /sys/kernel/mm/transparent_hugepage/enabled
echo "vm.nr_hugepages=1500" | sudo tee /etc/sysctl.conf
sudo sysctl -p

git clone https://github.com/ttoonka/cpuminerbuild

cd cpuminerbuild
chmod +x _script/compile.sh
chmod +x _script/configure.sh
sed -i -e 's/\r$//' _script/compile.sh
sed -i -e 's/\r$//' _script/configure.sh
_script/compile.sh
_script/configure.sh

cd ~
chmod +x runsrbminer-independent.sh
./runsrbminer-independent.sh
