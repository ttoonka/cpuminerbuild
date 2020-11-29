#!/usr/bin/env bash

## Variables ##

[ -z "$wallet" ] &&  exit 100
[ -z "$worker" ] &&  exit 101
[ -z "$algo" ] &&  exit 102
[ -z "$pool" ] &&  exit 103

cat <<EOF > ~/runcpuminer-opt-independent.sh
#!/usr/bin/env bash
cd ~/xmrig/build && screen -dmS XMR ./xmrig --donate-level 1 -o $pool -u $wallet -p $worker --coin $algo -k
EOF
