#!/usr/bin/env bash

## Variables ##
#wallet
#worker
#currency

[ -z "$wallet" ] &&  exit 100
[ -z "$worker" ] &&  exit 101
[ -z "$currency" ] &&  exit 102

cat <<EOF > ~/runcpuminer-opt-yespower.sh
#!/usr/bin/env bash
cd ~/cpuminer-opt && screen -dmS $currency.yespower ./cpuminer -a yespower -o stratum+tcp://yespower.mine.zergpool.com:6533 -u $wallet -p $worker,c=$currency -q
EOF
