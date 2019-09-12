#!/usr/bin/env bash

## Variables ##

[ -z "$wallet" ] &&  exit 100
[ -z "$worker" ] &&  exit 101
[ -z "$currency" ] &&  exit 102
[ -z "$algo" ] &&  exit 103
[ -z "$port" ] &&  exit 104

cat <<EOF > ~/runcpuminer-opt-independent.sh
#!/usr/bin/env bash
cd ~/cpuminer-opt && screen -dmS $currency.$algo ./cpuminer -a $algo -o stratum+tcp://$algo.mine.zergpool.com:$port -u $wallet -p $worker,c=$currency -q
EOF
