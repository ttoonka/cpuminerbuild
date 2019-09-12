#!/usr/bin/env bash

## Variables ##
#wallet
#worker
#currency

[ -z "$wallet" ] &&  exit 100
[ -z "$worker" ] &&  exit 101
[ -z "$currency" ] &&  exit 102

cat <<EOF > ~/runcpuminer-opt-yescryptR32.sh
#!/usr/bin/env bash
cd ~/cpuminer-opt && screen -dmS $currency.yescryptR32 ./cpuminer -a yescryptR32 -o stratum+tcp://yescryptR32.mine.zergpool.com:6343 -u $wallet -p $worker,c=$currency -q
EOF
