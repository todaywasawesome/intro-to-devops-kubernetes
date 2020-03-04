## Optimize the image with a mult-stage Docker build

Remember when we started? We created an image that included all the tooling needed to build Go binaries. But we don't actually need all those libraries to run things. 

Open your Dockerfile, and before ENTRYPOINT, add a new image from argument.

`FROM scratch`

Set the working directory

`WORKDIR /app`

Now we'll need to copy the app from our build container.

`COPY --from=build-env /src/myapp /app/`

And finally the ENTRYPOINT should be

`ENTRYPOINT ["./myapp"]`

