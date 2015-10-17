cp /etc/sysconfig/network-scripts/ifcfg-eth0 /etc/sysconfig/network-scripts/ifcfg-eth1
sed -i "s/^DEVICE=.*/DEVICE=eth1/I" "/etc/sysconfig/network-scripts/ifcfg-eth1" 
defaultgw=$(ip route show |sed -n "s/^default via //p")
declare -a gateway=(${defaultgw// / })
sed -i "\$aGATEWAY=${gateway[0]}" /etc/sysconfig/network
service network restart

# install wget, vim, unzip, Node, express,  mongodb, and the chirpApp
# mongodb only installed for testing. App will eventually connect to mongodb replicaset


# install wget, vim, unzip, svn (to download chirp subfolder from github)
yum install wget -y
yum install vim -y
# yum install unzip -y
yum install svn -y

# install nodejs and npm
yum install epel-release -y
yum install nodejs -y
yum install npm -y

# install mongodb - This is just for testing. For demo mongodb will connect
# to the mongodb replica set and not to the the local instance
# echo "[mongodb]
# name=MongoDB Repository
# baseurl=http://downloads-distro.mongodb.org/repo/redhat/os/x86_64/
# gpgcheck=0
# enabled=1" > mongo.repo

# mv mongo.repo /etc/yum.repos.d/mongodb-org-3.0.repo
# mkdir -p /data/db
# mkdir -p /var/lib/mongo
# yum install -y mongodb-org	
# service mongod start


# install chirp app
# wget https://github.com/hwz/chirp/archive/master.zip
# unzip master.zip
# cd chirp-master/chirp
svn checkout https://github.com/maninderjit/MEAN-demo/trunk/chirp
cd chirp

if [ "$1" ] && [ "$2" ] && [ "$3" ] && [ "$4" ] && [ "$5" ]; then
# replace username and password which node uses to connect to mongodb
sed -i 's/@@user@@/'$1'/g' ./app.js
sed -i 's/@@pass@@/'$2'/g' ./app.js
sed -i 's/@@redis-host@@/'$3'/g' ./app.js
sed -i 's/@@redis-port@@/'$4'/g' ./app.js
sed -i 's/@@redis-auth-key@@/'$5'/g' ./app.js
fi
# <TODO add sed command to replace mongodb username and password to be used in app

npm install
# npm install pm2 -g
# pm2 update
# export NODE_ENV=production
# pm2 start ./bin/www
npm start
