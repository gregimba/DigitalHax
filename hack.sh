#Assuming root access and ubuntu 12.04
echo "Ip address"
read ip
scp ./find.sh root@$ip:
ssh root@$ip 'chmod +x ./find.sh ; ./find.sh' | pv > out.txt.gz
