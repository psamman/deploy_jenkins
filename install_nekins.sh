export CLUSTER_DOMAIN=psamman.com


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


# kubectl create clusterrolebinding permissive-binding --clusterrole=cluster-admin --user=admin --user=kubelet --group=system:serviceaccounts:jenkins:default

    # helm upgrade --install  \
    # --set Master.HostName=jenkins.$CLUSTER_DOMAIN \
    # --namespace jenkins \
    # jenkins \
    # $CHARTS_ROOT_DIR/jenkins


#     helm install stable/jenkins \
#     --name jenkins \
#     --namespace jenkins \
#     --values values.yaml \
#     --set master.hostName=jenkins.psamman.com \
#     --set master.adminUser=admin \
#    --set master.adminPassword=P@ssw0rd \
#   --set master.ingress.enabled=true \
#  --set master.ingress.hostName=jenkins.psamman.com \

# helm upgrade --install  \
#     --set virtualservice.enabled=false \
#     --set Master.HostName=jenkins.psamman.com \
#     --namespace jenkins \
#     jenkins \
#    .

# C:\Users\amabdlqa\Desktop\OneDrive - Microsoft\old_desktop\infrastructure_test\psamman\helm-charts\jenkins\values.yaml


kubectl create ns go-demo-3
kubectl create -n go-demo-3 \
    secret tls psamman-com-nginx-ingress \
    --key 'certificates/psamman.com.pem' \
    --cert 'certificates/psamman.com.crt'

    helm upgrade -i \
 go-demo-3 go-demo-3 \
 --namespace go-demo-3 \
 --set image.tag=latest \
 --set ingress.host=app.psamman.com \
 --reuse-values 

 