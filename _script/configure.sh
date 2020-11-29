#!/usr/bin/env bash

## Variables ##

[ -z "$wallet" ] &&  exit 100
[ -z "$worker" ] &&  exit 101
[ -z "$algo" ] &&  exit 102
[ -z "$pool" ] &&  exit 103
[ -z "$password" ] &&  exit 104

cat <<EOF > ~/runsrbminer-independent.sh
#!/usr/bin/env bash
cd ~/SRBMiner-Multi-0-5-7 && screen -dmS SRBMiner ./SRBMiner-MULTI --algorithm $algo  --pool $pool --wallet $wallet.$worker --password $password --cpu-threads 0 --disable-gpu
EOF
