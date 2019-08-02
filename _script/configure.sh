#!/usr/bin/env bash

## Variables ##
#wallet
#worker
#currency

[ -z "$wallet" ] &&  exit 100
[ -z "$worker" ] &&  exit 101
[ -z "$currency" ] &&  exit 102

cat <<EOF > ~/runcpuminer-opt-yescrypt.sh
#!/usr/bin/env bash
cd ~/cpuminer-opt && screen -dmS $currency.yescrypt ./cpuminer -a yescrypt -o stratum+tcp://yescrypt.mine.zergpool.com:6233 -u $wallet -p $worker,c=$currency -q

EOF
