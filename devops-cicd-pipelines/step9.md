#Deploy to our Kubernetes cluster

Lets go back to editing our pipeline and add our deploy step. 

```
  MyDeploy:
    title: Deploy App to Kubernetes
    image: codefresh/cf-deploy-kubernetes:master
    stage: "deploy"
    commands:
      - /cf-deploy-kubernetes ${{CF_VOLUME_PATH}/color-coded/deploy/kubernetes/blue.deployment.yaml
      - /cf-deploy-kubernetes ${{CF_VOLUME_PATH}}/color-coded/deploy/kubernetes/blue.service.yaml
    environment:
      - KUBECONTEXT=Katacoda
      - KUBERNETES_NAMESPACE=default
      - MY_REPLICA_NUMBER=3
      - KUBERNETES_DEPLOYMENT_TIMEOUT=360 
```{{copy}}

Save and run this, if everything works, you should see the app running at `http://localhost:30925/`{{copy}}