# Aim of the Demo is to bring to light performance considerations when designing a Scalable MEAN Applicaiton
# App will be deployed on Azure using ARM
# initial code base taken from # 
# https://github.com/Azure/azure-quickstart-templates/tree/master/node-mongodb-high-availability

# Demo 1 using front end NODEJS cluster and Single mongoDB Replica Set
# Show effect of mongodb configurations, including write concern on the performance

# Steps to get things started
# Execute following from Powershell



# 1 you will be prompted for your azure accound credentials after this command
Add-AzureAccount

# 2
Switch-AzureMode AzureResourceManager

# 3 Create ResourceGroup and Storage Account (Optional)
 New-AzureResourceGroup -Name 7resgrp -Location "West US"
 
 New-AzureStorageAccount -Name 7stoacc -Location "WEST US" -AccountType Standard_LRS -ResourceGroupName 7resgrp
 
# 4 You will be promted for username, password and storage account. The username and password will have root access on the Ubuntu VMs as well as admin acess on the mongodb replica set
New-AzureResourceGroupDeployment -Name mongo-deploy-2 -ResourceGroupName  5-res-grp -TemplateUri https://raw.githubusercontent.com/maninderjit/MEAN-demo/master/mongodb-one-replica-set/azuredeploy.json -Verbose



# Demo 2 using fron end NODEJS cluster and a MongoDB sharded cluster with 2-3 replicasets
# Demonstarte when to / When not to Shard the cluster, and compare performance