## Build our go container

`docker build .`

Each command we added will create a new layer for our image. Layers are actually their own layers that are basically 'glued' together to make one image we can reference. 

See the image we build by running

`docker images`

You'll see an image with no name here. So lets rebuild it with a new name.

`docker build todaywasawesome/color-coded .`

See how it's changed

`docker images`

