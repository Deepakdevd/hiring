## for example we creating cluster using azure kubernetes
   ```sh
     $az login
     [group creation]
     $az group create --name <groupname> --location <placename>
     [cluster name]
     $az aks create -g <resourcegroupname> -n <clustername>  --location <place> --generate--ssh-key
     [get cluster credential where we get ./kube/config]
     $az aks get-credential --resource-group <groupname> --name <clustername>
   ``` 

## deploy file
`$kubectl create -f deployment.yaml`
## deploy service file
`$kubectl create -f service.yaml`

## watch for service and deployment created
```sh
$kubectl get svc

$kubectl get deployments
```
