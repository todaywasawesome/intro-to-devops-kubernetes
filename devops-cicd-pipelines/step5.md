#Promote to Dockerhub

Anytime we want to use an image elsewhere (like for deployment) we need to make it available in a registry. 

*You'll need to change the image name to match your repo name.*

```
  promote:
    title: "Promote to Dockerhub"
    type: "push"
    stage: deploy
    image_name: "rpbo/color-coded"
    registry: "dockerhub"
    candidate: "${{build}}"
    tags:
      - "${{CF_BRANCH_TAG_NORMALIZED}}"
      - "${{CF_REVISION}}"
```

Now we're ready to start deploying!