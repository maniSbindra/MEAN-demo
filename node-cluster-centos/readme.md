<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FAzure%2Fazure-quickstart-templates%2Fmaster%2FCentOS-2nics-lb-cluster%2Fazuredeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>

This template deploys a 2-10-node CentOS 6.5 cluster using the [Azure Resource Manager (ARM)](https://azure.microsoft.com/en-us/documentation/articles/resource-group-overview/) "copy" feature. Each node has 2 network cards:

* The first one is on a "public" subnet.
* The second one is on a "private" subnet.

The public subnet is fronted by a load-balancer with one dynamically assigned public IP address and as many NAT ports as there are nodes, starting from port 50000.
The template also asks for a dns name and a location for the ip address.
Thus, if you want to connect to node 0, you'll type:

* ssh \<user\>@\<name\>.\<location\>.cloudapp.azure.com -p 50000

The private network is intended for cluster communications only.

The template also configures:

* A storage account where all the virtual hard disks are stored.
* A virtual network where the private and public subnet reside.

The template invokes a custom bash script that configures the second network card on CentOS nodes. By default the second card is recognized but the network stack is not set up.

The limit on the number of nodes is artificial. Alas, ARM does not support arithmetic operators yet, so one has to list all the possible NAT ports for the load-balancer configuration. I listed 10. Feel free to add more and you'll be able to increase the number of nodes. Also, if not all nodes require external connections, you can have as many nodes as the current subnet limit.


There is an additional token 'Drupal.settings.livechat.pta_token' which is an encrypted string containing a users Name and Email address
which is sent along with the request. For an anonymous request, this is still sent, but with a default email address.

history of commands
 1  ls
    2  wget localhost
    3  curl
    4  sudo wget
    5  sudo -i
    6  sudo yum install wget
    7  wget
    8  wget localhost
    9  curl
   10  sudo yum install -y curl
   11  curl
   12  wget http://nodejs.org/dist/v0.10.30/node-v0.10.30.tar.gz
   13  tar xzvf node-v* && cd node-v*
   14  sudo yum install gcc gcc-c++
   15  ./configure
   16  make
   17  node --version
   18  tar xzvf node-v* && cd node-v*
   19  wget http://nodejs.org/dist/v0.10.30/node-v0.10.30.tar.gz
   20  tar xzvf node-v* && cd node-v*
   21  node
   22  which node
   23  cd ~
   24  wget http://nodejs.org/dist/v0.10.30/node-v0.10.30-linux-x64.tar.gz
   25  sudo tar --strip-components 1 -xzvf node-v* -C /usr/local
   26  sudo yum install epel-release
   27  sudo yum install -Y epel-release
   28  sudo yum install -y epel-release
   29  sudo yum install nodejs
   30  node --version
   31  sudo yum install npm -y
   32  wget https://github.com/hwz/chirp/archive/master.zip
   33  unzip master.zip
   34  sudo yum install unzip -y
   35  unzip master.zip
   36  ls
   37  cd chirp-master/
   38  ls
   39  cd chirp/
   40  ls
   41  npm install
   42  ls
   43  vim app.js
   44  sudo yum install vim -y
   45  history
   46  vim app.js
   47  npm start
   48  gcc --version
   49  sudo yum install -y mongodb-org
   50  cat "[mongodb-org-3.0]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/3.0/x86_64/
gpgcheck=0
enabled=1"
   51  clear
   52  cat "[mongodb-org-3.0]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/3.0/x86_64/
gpgcheck=0
   53  clear
   54  sudo  cat "[mongodb-org-3.0]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/3.0/x86_64/
gpgcheck=0
enabled=1" > /etc/yum.repos.d/mongodb-org-3.0.repo
   55  sudo  cat "[mongodb-org-3.0]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/3.0/x86_64/
gpgcheck=0
enabled=1"
   56  clear
   57  cat
   58  clear
   59  sudo  cat "[mongodb-org-3.0]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/3.0/x86_64/
gpgcheck=0
enabled=1"
   60  cat "adsfasdfasdf
adsfasdf
"
   61  cat test
   62  sudo  cat "[mongodb-org-3.0]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/3.0/x86_64/
gpgcheck=0
enabled=1"
   63  sudo  cat "[mongodb-org-3.0]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/3.0/x86_64/
gpgcheck=0
enabled=1"
   64  sudo touch /etc/yum.repos.d/mongodb-org-3.0.repo
   65  sudo  cat "[mongodb-org-3.0]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/3.0/x86_64/
gpgcheck=0
enabled=1" > /etc/yum.repos.d/mongodb-org-3.0.repo
   66  sudo  cat "[mongodb-org-3.0]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/3.0/x86_64/
gpgcheck=0
enabled=1" > /etc/yum.repos.d/mongodb-org-3.0.repo
   67  chmod 744
   68  chmod 744 /etc/yum.repos.d/mongodb-org-3.0.repo
   69  ls -al /etc/yum.repos.d/mongodb-org-3.0.repo
   70  vim /etc/yum.repos.d/mongodb-org-3.0.repo
   71  sudo vim /etc/yum.repos.d/mongodb-org-3.0.repo
   72  clear
   73  sudo  cat >/etc/yum.repos.d/mongodb-org-3.0.repo  "[mongodb-org-3.0]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/3.0/x86_64/
gpgcheck=0
enabled=1"
   74  sudo  cat >> /etc/yum.repos.d/mongodb-org-3.0.repo  "[mongodb-org-3.0]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/3.0/x86_64/
gpgcheck=0
enabled=1"
   75  sudo rm  /etc/yum.repos.d/mongodb-org-3.0.repo
   76  sudo  cat > /etc/yum.repos.d/mongodb-org-3.0.repo  "[mongodb-org-3.0]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/3.0/x86_64/
gpgcheck=0
enabled=1"
   77  sudo vim /etc/yum.repos.d/mongodb-org-3.0.repo: Permission denied
   78  sudo vim /etc/yum.repos.d/mongodb-org-3.0.repo
   79  sudo yum install -y mongodb-org
   80  sudo service mongod start
   81  mongo
   82  sudo service mongod service
   83  sudo service mongod service status
   84  sudo service mongod service restart
   85  sudo service mongod status
   86  sudo service mongod restart
   87  mongo
   88  mongod
   89  sudo netstat -napt
   90  ps -ef | grep mongo
   91  kill -15  33170
   92  sudo kill -15  33170
   93  mongod
   94  sudo mkdir -p /data/db
   95  sudo mongod
   96  history | grep restart
   97  sudo service mongod start
   98  mongod
   99  mongo
  100  clear
  101  npm start
  102  history
  103  vim app.js
  104  ls
  105  vim ./bin/www
  106  sudo vim ./bin/www
  107  vim ./bin/www
  108  npm start
  109  sudo npm start
  110  history
  111  clear
  112  history

  
  -----------
  
  
   1  sudo netstat -napt
    2  ls
    3  cd chirp-master/
    4  ls
    5  cd chirp/
    6  ls
    7  cd public/
    8  ls
    9  history
   10  vim app.js
   11  mongo
   12  history

