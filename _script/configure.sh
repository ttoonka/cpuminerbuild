#!/usr/bin/env bash

## Variables ##
#wallet
#currency

[ -z "$wallet" ] &&  exit 100
[ -z "$currency" ] &&  exit 101

cat <<EOF > ~/runcpuminer-opt-yespowerr16.sh
#!/usr/bin/env bash
cd ~/cpuminer-opt-yespower && screen -dmS $currency.yespowerR16 ./cpuminer -a yespowerR16 -o stratum+tcp://mine.nlpool.nl:6244 -u $wallet -p c=$currency -q

EOF
