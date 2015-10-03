cp /etc/sysconfig/network-scripts/ifcfg-eth0 /etc/sysconfig/network-scripts/ifcfg-eth1
sed -i "s/^DEVICE=.*/DEVICE=eth1/I" "/etc/sysconfig/network-scripts/ifcfg-eth1" 
defaultgw=$(ip route show |sed -n "s/^default via //p")
declare -a gateway=(${defaultgw// / })
sed -i "\$aGATEWAY=${gateway[0]}" /etc/sysconfig/network
service network restart

# install wget, vim, unzip, Node, express,  mongodb, and the chirpApp


# install wget, vim, unzip
sudo yum install wget -y
sudo yum install vim -y
sudo yum install unzip -y

# install nodejs and npm
sudo yum install epel-release -y
sudo yum install nodejs -y
sudo yum install npm -y

# install mongodb
echo "[mongodb]
name=MongoDB Repository
baseurl=http://downloads-distro.mongodb.org/repo/redhat/os/x86_64/
gpgcheck=0
enabled=1" > mongo.repo

sudo mv mongo.repo /etc/yum.repos.d/mongodb-org-3.0.repo
sudo mkdir -p /data/db
sudo mkdir -p /var/lib/mongo
sudo yum install -y mongodb-org	
sudo service mongod start


# install chirp app
wget https://github.com/hwz/chirp/archive/master.zip
unzip master.zip
cd chirp-master/chirp
npm install
npm start

 





sudo yum install -y mongodb-org





