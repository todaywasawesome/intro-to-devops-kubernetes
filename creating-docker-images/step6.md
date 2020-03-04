## Change our app to display a different color

Open the app.go, find line 18 where it lists a color and replace it with any color you like. 

After, lets build the image again, but this time we can tag it with a color, I'll go with #44B3C2 and tag it blue.

`docker build -t todaywasawesome/color-coded:blue-1.0 .`

Now we'll run it with the new color.

Run this new image to see it in action. But this time, we'll run the image as a daemon (in the background).

`docker run -d -p80:8080 todaywasawesome/color-coded:blue-1.0`

Click the "+" and view port 80 on the node.

If you don't click anywhere, the contianer will keep running. 

You can see this with:

`docker ps`

