# Check the total amount in the wallet.
bitcoin-cli -regtest getbalances | grep '"trusted":' | cut -d'"' -f3 | cut -d':' -f2 | xargs
