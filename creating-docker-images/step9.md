## Build our new image and see the space savings!

`docker build -t todaywasawesome/color-coded:slim-1.0 .`

Now view the images to see just how much space we saved.

`docker images` 

WOW! Do you see why we used multi-stage Docker builds now?

6 MB vs 266 MB!

Feel free to run it again to prove it still works.

`docker run -d -p80:8080 todaywasawesome/color-coded:slim-1.0 .`