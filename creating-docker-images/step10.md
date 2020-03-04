## Push the image to Docker hub

Login to Docker, you will need an account at https://docker.com for this.

`docker login`

Follow the prompts

`docker push todaywasawesome/color-coded:slim-1.0`

That won't work! Why? Because you're trying to push to my repo, so you'll need to retag the image with your docker username like this:

`docker tag todaywasawesome/color-coded:slim-1.0 [YOUR DOCKER USERNAME HERE]/color-coded:slim-1.0`

Now try again

`docker push [YOUR DOCKER USERNAME HERE]/color-coded:slim-1.0`

Next, try pushing your own color image using what you've learned. Make a red, blue, and green image. 