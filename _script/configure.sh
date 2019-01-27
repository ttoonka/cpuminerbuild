#!/bin/bash

## Variables ##
#wallet
#currency

[ -z "$wallet" ] &&  exit 100
[ -z "$currency" ] &&  exit 101

cat <<EOF > runcpuminer-opt-yespower.sh
#!/usr/bin/env bash
cd ~/cpuminer-opt-yespower && screen -dmS $currency.yespower ./cpuminer -a yespower -o stratum+tcp://mine.nlpool.nl:6234 -u $wallet -p c=$currency -q

EOF
