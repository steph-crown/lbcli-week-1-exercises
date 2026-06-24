# Write the bitcoin cli command to get the bitcoin node installation version
bitcoin-cli -regtest --version | head -n 1 | awk '{print $NF}'
