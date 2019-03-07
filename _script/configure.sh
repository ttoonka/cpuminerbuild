#!/usr/bin/env bash

## Variables ##
#wallet
#currency

[ -z "$wallet" ] &&  exit 100
[ -z "$currency" ] &&  exit 101

cat <<EOF > ~/runcpuminer-opt-yescryptr16.sh
#!/usr/bin/env bash
cd ~/cpuminer-opt-yespower && screen -dmS $currency.yescryptr16 ./cpuminer -a yescryptr16 -o stratum+tcp://mine.nlpool.nl:6333 -u $wallet -p c=$currency -q

EOF
