#!/usr/bin/env bash

## Variables ##
#wallet
#currency

[ -z "$wallet" ] &&  exit 100
[ -z "$currency" ] &&  exit 101

cat <<EOF > ~/runcpuminer-opt-yespower.sh
#!/usr/bin/env bash
cd ~/cpuminer-opt-yespower && screen -dmS $currency.yescryptr32 ./cpuminer -a yescryptr32 -o stratum+tcp://mine.nlpool.nl:6343 -u $wallet -p c=$currency -q

EOF
