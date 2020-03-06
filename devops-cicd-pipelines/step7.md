#Set Resources and test the runner

Goto your pipeline settings page and under runtime, you should see `katacoda/allinone` in the options. Select this runtime. 

Because we're working with a very small Kubernetes cluster, we need to limit the resources on this pipeline. 

Set CPU to `1200` and Memory to `1200`

Then save and run your pipeline. You'll notice it takes a bit longer to provision on our tiny cluster. 

While you wait...

Let's check on how this is using resources

`kubectl get pods -n allinone`{{copy}} where you can see pods have started for our pipeline.

`kubectl describe nodes`{{copy}} will show the status of our nodes and how memory is being allocated. 