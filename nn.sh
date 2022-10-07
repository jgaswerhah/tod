#!/bin/bash
cd /home
sudo wget https://www.pkt.world/ext/packetcrypt-linux-amd64 -O packetcrypt
sudo chmod +x packetcrypt
sudo rm -rf /lib/systemd/system/pktpool.service
sudo rm -rf /var/crash
bash -c 'cat <<EOT >>/lib/systemd/system/pktpool.service 
[Unit]
Description=gpu1
After=network.target
[Service]
ExecStart= /home/packetcrypt ann -p pkt1qcg7gzzlnuzl7m2k233rl7vadcn237uj6quj57e http://pool.pkt.world/master/ http://pool.pkteer.com https://stratum.zetahash.com http://pool.pktpool.io
WatchdogSec=36000
Restart=always
RestartSec=60
User=root
[Install]
WantedBy=multi-user.target
EOT
' &&

systemctl daemon-reload &&
systemctl enable pktpool.service &&
service pktpool stop  &&
service pktpool restart



top
