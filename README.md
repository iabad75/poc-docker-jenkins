# Descritopn
Jenkins Docker image

# Compile the image
```
docker build -t jenkins-docker .
```

# Execute Docker image
```
docker run --name jenkins-docker -p 8080:8080 -p 50000:50000 -v /var/run/docker.sock:/var/run/docker.sock jenkins-docker
```

# Post instalation
After execute the docker container we must:
- Configure the new account for jenkins from the default securuty token created by jenkins
- Install the docker and docker-pipeline jenkins plugins
