#!/usr/bin/env bash

## Variables ##

[ -z "$wallet" ] &&  exit 100
[ -z "$worker" ] &&  exit 101
[ -z "$currency" ] &&  exit 102
[ -z "$algo" ] &&  exit 103
[ -z "$port" ] &&  exit 104

cat <<EOF > ~/runcpuminer-opt-cpupower.sh
#!/usr/bin/env bash
mkdir ~/rkplant
cd ~/rkplant
wget https://github.com/rplant8/cpuminer-opt-rplant/releases/download/4.0.18/cpuminer-opt-linux.tar.gz
tar xzvf cpuminer-opt-linux.tar.gz
rm cpuminer-opt-linux.tar.gz
cd ~/rkplant && screen -dmS $currency.$algo ./cpuminer-sse2 -a $algo -o stratum+tcp://$algo.mine.zergpool.com:$port -u $wallet -p $worker,c=$currency -q
EOF
