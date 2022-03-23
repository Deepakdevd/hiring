## steps for  helm cahrt to deploy to kubeernetes cluster

   ## prequesits
   make sure [hemlinstalled](https://helm.sh/docs/intro/install/) in your CLI/powershell
   [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl-windows/) is configured in your CLI
   
## for example we creating cluster using azure kubernetes
   ```sh
     $az login
     [group craetion]
     `$az group create --name <grupname> --location <placename>
     [cluster name]
     `$az aks create -g <resourcegroname> -n <clustername>  --location <place> --generate--ssh-key`
     
