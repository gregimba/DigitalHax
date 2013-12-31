#Assuming root access and ubuntu 12.04
echo "What is the IP address of your newly spawned DigitalOcean instance?"
read ip
scp ./find.sh root@$ip:
ssh root@$ip 'chmod +x ./find.sh ; ./find.sh' | pv > out.txt.gz
