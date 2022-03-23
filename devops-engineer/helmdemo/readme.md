## steps for  helm cahrt to deploy to kubeernetes cluster

   ## prequesits
   make sure [hemlinstalled](https://helm.sh/docs/intro/install/) in your CLI/powershell
   [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl-windows/) is configured in your CLI
   
## for example we creating cluster using azure kubernetes
   ```sh
     $az login
     [group creation]
     `$az group create --name <groupname> --location <placename>
     [cluster name]
     $az aks create -g <resourcegroupname> -n <clustername>  --location <place> --generate--ssh-key
     [get cluster credential where we get ./kube/config]
     $az aks get-credential --resource-group <groupname> --name <clustername>
   ```sh  
##depolyment using Helm  
1) first we need to create directory ex: samplecode

`$helm create samplecode`
  (there will be standard dependencies file create like, template , chart, values we need to customise these file according to our cluster deployment)
2) deployging helm chart 

`$helm insatl samplecode samplecode/`

3) cwatch for service and deployment created
```sh
$kubectl get svc

$kubectl get deployments
