# Aim of the Demo is to bring to light performance considerations when designing a Scalable MEAN Applicaiton
# App will be deployed on Azure using ARM
# initial code base taken from # 
# https://github.com/Azure/azure-quickstart-templates/tree/master/node-mongodb-high-availability

# Demo 1 using front end NODEJS cluster and Single mongoDB Replica Set
# Show effect of mongodb configurations, including write concern on the performance

# Demo 2 using fron end NODEJS cluster and a MongoDB sharded cluster with 2-3 replicasets
# Demonstarte when to / When not to Shard the cluster, and compare performance