#Connect repo and start building pipeline

Goto the projects page and create a new project called `SLC DevOps`. https://g.codefresh.io/projects/

Then create a new pipeline called `Build and Deploy`. 

Select the repo you forked below and leave the Git commit trigger checked. 

Click create. 

You'll have a default pipeline created. ERASE EVERYTHING! No cheating, we're going to build it from scratch. 

Start by setting the verison for the pipeline and the stages we'll use

```
version: "1.0"
stages:
  - "build"
  - "test"
  - "deploy"

steps:
```{{copy}}

Next, we'll add a section to checkout our code.

```
  clone:
    type: "git-clone"
    description: "Cloning main repository..."
    repo: "${{CF_REPO_OWNER}}/${{CF_REPO_NAME}}"
    revision: "${{CF_BRANCH}}"
    stage: "build"
```{{copy}}

Now we'll build our image.

```
  build:
    title: "Building Docker Image"
    type: "build"
    image_name: "todaywasawesome/color-coded"
    working_directory: "${{clone}}"
    tag: "${{CF_BRANCH_TAG_NORMALIZED}}"
    dockerfile: "Dockerfile"
    stage: "build"
```{{copy}}

Save and run your pipeline! Looks good! 