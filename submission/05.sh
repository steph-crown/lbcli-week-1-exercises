# Check the total amount in the wallet.
# bitcoin-cli -regtest getbalances | grep '"trusted":' | cut -d'"' -f3 | cut -d':' -f2 | xargs
ADDR=$(bitcoin-cli -regtest -rpcwallet=builderswallet getnewaddress)
bitcoin-cli -regtest generatetoaddress 101 "$ADDR" > /dev/null
bitcoin-cli -regtest -rpcwallet=builderswallet getbalance
