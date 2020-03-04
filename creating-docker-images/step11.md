# Deploy your own color app to Kubernetes. 

Open up the deploy/kubernetes directory in your editor, copy the `blue.deployment.yaml` to your own file and change the image used in the deployment yaml to one of the colors you pushed. 

Also copy the blue service yaml with your new color. No changes are needed to this file.

I'll do green.

Then send them to Kubernetes.

`kubectl apply -f deploy/kubernetes/green.deployment.yaml`

`kubectl apply -f deploy/kubernetes/green.service.yaml`

Check the service with `kubectl get services` to see that it's set a port. 

Hey? Why is everything blue? Because we never changed the metadata. Feel free to edit that now, then reapply. Or you can move forward. 

Because we're using minikube, in this example we're using minikube, we actually won't be able to access port 80 on the localhost. We can see where minikube is routing the request with `minikube service blue --url`

In Katacoda we can't goto that url, but we can visit that port on the localhost. 