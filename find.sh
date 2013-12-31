apt-get update
apt-get install binutils apache2 -y

echo "This could take a while"
dd if=/dev/vda bs=1M | strings -n 100 > out.txt
echo "gziping file"
gzip out.txt
echo "copying to server"
mv out.txt.gz /var/www
exit