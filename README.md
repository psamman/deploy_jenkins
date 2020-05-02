# deploy_jenkins

```
export CLUSTER_DOMAIN=psamman.com

```
```
kubectl create ns jenkins
kubectl create -n jenkins \
    secret tls psamman-com-nginx-ingress \
    --key 'certificates/psamman.com.pem' \
    --cert 'certificates/psamman.com.crt'

    helm upgrade --install --wait \
     jenkins \
    --namespace jenkins \
    --values values.yaml \
    --set master.hostName=jenkins.psamman.com \
    --set master.adminUser=admin \
   --set master.adminPassword=P@ssw0rd \
  --set master.ingress.enabled=true \
 --set master.ingress.hostName=jenkins.psamman.com \
 stable/jenkins

 ```