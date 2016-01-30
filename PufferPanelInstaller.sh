clear
echo Please replace the word wheezy with jessie on this next screen
sleep 5
sudo nano /etc/apt/sources.list
sudo apt-get update
sudo apt-get install sudo curl uuid-runtime
sudo apt-get install -y openssl nginx git mysql-client mysql-server php5-fpm php5-cli php5-curl php5-mysql php5-mcrypt
php5enmod mcrypt
service php5-fpm restart
mkdir -p /srv && cd /srv
curl -L -o pufferpanel.tar.gz https://git.io/vzpYF
tar -xf pufferpanel.tar.gz
cd pufferpanel
echo Letting PufferPanel take over installation
echo This will take a while
./pufferpanel install
clear
echo PufferPanel control panel installed
echo Now install Scales from http://scales.pufferpanel.com/docs/getting-started
