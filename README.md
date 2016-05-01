# MEAN appliaction created using ARM Template
## Aim of the Demo is to bring to light performance considerations when designing a Scalable MEAN Applicaiton
## App will be deployed on Azure using ARM
## initial copy of chirp app taken from https://github.com/MicrosoftLearning/chirp/ 

## Demo using front end NODEJS cluster and Single mongoDB Replica Set
## Show effect of mongodb configurations, including write concern on the performance

## Steps to get things started
## Execute following from Powershell

# Solution Overview
![Solution Overview](https://raw.githubusercontent.com/maniSbindra/MEAN-demo/master/SolutionOverview/SolutionOverview.png "Solution Overview")


## 1 you will be prompted for your azure accound credentials after this command
### Add-AzureRmAccount


## 2 Create ResourceGroup and Storage Account (Optional)
### New-AzureResourceGroup -Name resgrp -Location "West US"
### New-AzureStorageAccount -Name stoacc -Location "WEST US" -AccountType Standard_LRS -ResourceGroupName resgrp
 
 
## 3 You will be promted for username, password, 
## storage account, frontendstorage account, redis host, redis key, new relic key and Dns name for node cluster . 
## The username and password will have root access on the Ubuntu VMs as well as admin acess on the mongodb replica set
### New-AzureResourceGroupDeployment -Name mongo-deploy-2 -ResourceGroupName  resgrp -TemplateUri https://raw.githubusercontent.com/maninderjit/MEAN-demo/master/Centos-nojejs-nodes-mongodb-one-replica-set/azuredeploy.json -Verbose

