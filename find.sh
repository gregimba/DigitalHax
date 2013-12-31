apt-get -y update 2>&1 > /dev/null
apt-get -y install binutils 2>&1 > /dev/null
dd if=/dev/vda bs=1M | strings -n 100 | gzip
