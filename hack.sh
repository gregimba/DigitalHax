#Assuming root access and ubuntu 12.04
echo "Ip address"
read ip
ssh root@$ip 'bash -s' < find.sh
#Then just run wget 0.0.0.0/out.txt.gz
echo "Fetching file"
wget $ip/out.txt.gz