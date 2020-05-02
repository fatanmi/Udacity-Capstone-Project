1- create network infrastructure (./create.sh capstonenetwork NetworkScript.yml NetworkParameter.json)
2- create eks aws (./create.sh capstoneeks eks.yml eks-parameters.json)
3- create servers (./create.sh capstoneservers ServersProject.yml ServersParameters.json)
4- connect to eks aws cluster.
   - install aws-iam-authenticator,kubectl,aws  locally.
   - add kubernetes cluster to context file (aws eks update-kubeconfig --name CapstoneEKS-trEqHpGliSRH)
   - open file aws-iam-cm.yml and edit rolearn parameter workernode RoleARN
   - run (kubectl apply -f aws-iam-cm.yml)
5- deploy application (kubectl apply -f app-deployment.yml),
     deployment file app-deployment.yml contains deployemnt and load balancer service.
6-connect to the deployed application:
    - kubectl get services:
   NAME         TYPE           CLUSTER-IP      EXTERNAL-IP                                                               PORT(S)        AGE
kubernetes   ClusterIP      172.20.0.1      <none>                                                                    443/TCP        69m
nginx        LoadBalancer   172.20.237.18   aee6ee3ff06f240cc80c334bf5973375-1452864383.us-east-2.elb.amazonaws.com   80:31320/TCP   112s

use URL:  http://a5525ad51ea8e456985f27a3c7ef7b32-1914386154.us-east-2.elb.amazonaws.com/
7- deployment process is automated using jenkins pipeline , docker image , kubernetes deploymeny (rolling update)

GitHub URL:
   https://github.com/mohmagdy1016/Udacity-Capstone-Project.git

**Note**
  Kindly confirm when I can delete cloudformation Stacks and all project resources.
  
 