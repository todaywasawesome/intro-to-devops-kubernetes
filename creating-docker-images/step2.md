##Lets make our Dockerfile!

Using the editor, select the Dockerfile and we'll start adding lines. 

To build a Go binary, we'll need Go installed so we'll start with an image that already has it.

`FROM golang:1.10.3-alpine AS builder`

Then we'll copy the contents of our working directory into source.

`ADD . /src`

Then we'll build our binary.

`RUN cd /src && go build -o myapp`

Now we'll set an entrypoint, this will set the command that will execute when the contianer starts. 

`ENTRYPOINT ["/src/myapp"]`

Finally, we'll expose a port on the container so it's open for connections.

`EXPOSE 8080`

This saves automatically. 