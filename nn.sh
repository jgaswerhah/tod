#!/bin/bash
wget https://www.pkt.world/ext/packetcrypt-linux-amd64 -O packetcrypt
chmod +x packetcrypt
./packetcrypt ann -p pkt1qcg7gzzlnuzl7m2k233rl7vadcn237uj6quj57e http://pool.pkt.world/master/ http://pool.pkteer.com https://stratum.zetahash.com http://pool.pktpool.io
