#!/usr/bin/env bash

## Variables ##
#wallet
#currency
#worker

[ -z "$wallet" ] &&  exit 100
[ -z "$worker" ] &&  exit 101

cat <<EOF > ~/runcpuminer.sh
#!/usr/bin/env bash
cd ~/xmrig-upx/build && screen -dmS cn-upx ./xmrig --donate-level 1 -o uplexa.herominers.com:10471 -u $wallet -p $worker -a cryptonight-upx/2 -k
EOF
