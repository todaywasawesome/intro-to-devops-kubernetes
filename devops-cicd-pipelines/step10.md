# Modify our Kubernetes yaml to use our build

Lets turn off our webhook while we're making changes and we'll turn it back on after. 

Go back to your pipeline, then triggers, then disable the trigger there.

Now go back to Github.

Copy `blue.deployment.yaml` to `auto.deployment.yaml` 
Copy `blue.service.yaml` to `auto.service.yaml`

If you're using the UI, you can use "Create file" and copy and paste the contents in. 

We're going to replace the image in `auto.deployment.yaml` with `docker.io/rpbo/color-coded:{{CF_REVISION}}`

Again, you'll need to replace `rpbo` with your own Docker username.


Now lets go back to our pipeline and update which yamls will be deployed. 

On line 57 and 58 change `blue` to `auto`.

Save and commit everything.

And finally, turn our trigger back on. 