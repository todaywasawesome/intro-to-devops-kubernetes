#Add tests

Tests take up a lot of time so we want to run them in parallel. We don't actually have tests here, so we'll put in some stand-ins.

Add these to your yaml.

```
  test:
    title: "Run tests"
    type: parallel
    stage: "test"
    steps:
      gotest: 
        title: Stand-in for running Go tests
        image: golang
        commands:
        - go version
      
      javatest: 
        title: Stand-in for testing with Java
        image: java:8-jre-alpine
        commands:
        - java -version
```

Notice we can use images as steps, and we can access any language we need or want. 