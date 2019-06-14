#!/usr/bin/env bash

## Variables ##
#wallet
#currency
#worker

[ -z "$wallet" ] &&  exit 100
[ -z "$worker" ] &&  exit 101

cat <<EOF > ~/runcpuminer.sh
#!/usr/bin/env bash
cd ~/xmrig/build && screen -S ARQ ./xmrig --donate-level 1 -o arqple.herominers.com:10630 -u $wallet -p $worker -a cn-trtl -k
EOF
