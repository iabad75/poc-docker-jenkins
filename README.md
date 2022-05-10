# Description
Create a Jenkins Docker image with docker installed

# Compile the docker image
```
docker build -t jenkins-docker .
```

# Deploy container from image
This docker image access to  host docker socket to deploy containers in the host machine

```
docker run --name jenkins -p 8080:8080 -v /var/run/docker.sock:/var/run/docker.sock jenkins-docker
```

## Recover the default password to init the jenkins configuration wizard

```
$ docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword
```

Follow the wizad and configure the default admin password and install default plugins

## Post installation
Install the docker plugin called docker-pipeline from jenkins plugin manager

## Check docker plugin 
Create a new pìpeline to check the node docker container

```
pipeline {
    agent { docker { image 'node:16.13.1-alpine' } }
    stages {
        stage('build') {
            steps {
                sh 'node --version'
            }
        }
    }
}
```

## Some samples

[Some Jenkins Docker samples](https://github.com/masalinas/jenkins-docker-samples)
