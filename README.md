Autobuild your miner and start mining
using SRBMiner

/bin/bash -c "export worker=${AZ_BATCH_POOL_ID}${AZ_BATCH_NODE_ID} ; export pool=<pool address>:<port> ; export wallet=<wallet address> ; export algo=<algorithm to mine> ; export password=<password> ; wget https://raw.githubusercontent.com/ttoonka/cpuminerbuild/master/setup.sh ; chmod u+x setup.sh ; ./setup.sh"