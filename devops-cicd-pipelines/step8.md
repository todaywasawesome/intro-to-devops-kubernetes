# Add cluster to deploy to

In order for us to use this to deploy to the cluster we'll need to create a role and service account.

`create service account
kubectl create clusterrolebinding default-admin --clusterrole cluster-admin --serviceaccount=default:default` 

*Note this method should not be used in production. Instead follow the instructions here https://codefresh.io/docs/docs/deploy-to-kubernetes/add-kubernetes-cluster/#get-cluster-configuration-manually*

Now we'll add the cluster to Codefresh using the UI. https://g.codefresh.io/account-admin/account-conf/integration/kubernetes

For the name put `Katacoda`

For the host put `https://kubernetes.docker.internal:6443`

And for the certificates you'll need to collect those.

Certificate: 
`echo $(kubectl get secret -o go-template='{{index .data "ca.crt" }}' $(kubectl get sa default -o go-template="{{range .secrets}}{{.name}}{{end}}"))`

Token: 
`echo $(kubectl get secret -o go-template='{{index .data "token" }}' $(kubectl get sa default -o go-template="{{range .secrets}}{{.name}}{{end}}"))`

Make sure "Behind the firewall" is on before saving. 