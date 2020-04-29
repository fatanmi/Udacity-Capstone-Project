1- create network infrastructure (./create.sh capstonenetwork NetworkScript.yml NetworkParameter.json)
2- create eks aws (./create.sh capstoneeks eks.yml eks-parameters.json)
3- create servers (./create.sh capstoneservers ServersProject.yml ServersParameters.json)
4- connect to eks aws cluster.
   - install aws-iam-authenticator,kubectl,aws  locally.
   - add kubernetes cluster to context file (aws eks update-kubeconfig --name CapstoneEKS-trEqHpGliSRH)
   - open file aws-iam-cm.yml and edit rolearn parameter workernode RoleARN
   - run (kubectl apply -f aws-iam-cm.yml)
5- deploy application (kubectl apply -f app-deployment.yml),
   while deployment file app-deployment.yml contains deployemnt and load balancer service.
6-connect to the deployed application:
    - kubectl get services:
   NAME         TYPE           CLUSTER-IP      EXTERNAL-IP                                                               PORT(S)        AGE
kubernetes   ClusterIP      172.20.0.1      <none>                                                                    443/TCP        69m
nginx        LoadBalancer   172.20.237.18   aee6ee3ff06f240cc80c334bf5973375-1452864383.us-east-2.elb.amazonaws.com   80:31320/TCP   112s

use URL:  http://aee6ee3ff06f240cc80c334bf5973375-1452864383.us-east-2.elb.amazonaws.com/
7- automate the  process using jenkins pipeline .
8- connect and upload the files to github repository.
9- 








1- Attached Network Diagram.
2- Attached CloudFormation Network Yaml Scripts and Parameters Json file , also create and update scripts.
3- Attached CloudFormation script for creation security groups,
   IAM role and S3 policy , launch Configuration , AutoScale group , Load balancer , Listener 
   Listener Rule and Target Group , plus attached required parameter json file, also attached create and update scripts.
4- HTML source code. (very simple just for teasting)
5- Attached ScreenShoots for S3 Storage.
6- Attached ScreenShoot for deployed web application page.
7- How to Deploy network:
                     ./create.sh network NetworkScript.yml NetworkParameter.json

8- How to deploy servers:
                     ./create.sh servers  ServersProject.yml ServersParameters.json

9- How script for how to destory the stack. 
10- Attached CloudFormation Stack info excel sheets for Network creation (Events , Resources , Outputs, Parameters).
11- Attached CloudFormation Stack info excel sheets for Servers creation (Events , Resources , Outputs, Parameters).
12- Attached ScreenShoots for all network and servers created Resources . 
13- URL : 
            http://serve-WebAp-M5ZPQUVW7I33-1788509081.us-west-2.elb.amazonaws.com
       

**Note**
  Kindly confirm when I can delete cloudformation Stacks and all project resources.
  
 