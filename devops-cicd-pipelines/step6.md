#Install the Codefresh runner

This will allow us to use your cluster for building and deploying. 

First install the Codefresh cli. 

`npm install -g codefresh`{{copy}}

*Note, if you're using your local machine, you can choose a different installation method*
https://codefresh-io.github.io/cli/installation/

To authenticate we'll need an api key. Go to your user settings page and generate a token. https://g.codefresh.io/user/settings

For now, just grant all permissions (though they aren't required). 

`codefresh auth create-context --api-key [YOUR API KEY HERE]`

Now we'll create a namespace for the runner to live in.

`kubectl create ns allinone`{{copy}}

`codefresh install agent --kube-namespace allinone --install-runtime --name katacoda`{{copy}}

This will take a few minutes to load and then start.

