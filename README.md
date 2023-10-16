# aws-lambda-docker-nodejs
aws-lambda-docker-nodejs

## Retrieve an authentication token and authenticate your Docker client to your registry.
## Use the AWS CLI:
$ aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 018042299534.dkr.ecr.us-east-1.amazonaws.com

## Create docker image:
$ docker build -t greeting .

## Create AWS ECR repository:
$ aws ecr create-repository --repository-name greeting

## Tag docker image:
$ docker tag greeting:latest <repositoryUri>:latest
$ docker tag greeting:latest 018042299534.dkr.ecr.us-east-1.amazonaws.com/greeting:latest

## Push docker images to ECR:
$ docker push <repositoryUri>:latest
$ docker push 018042299534.dkr.ecr.us-east-1.amazonaws.com/greeting:latest
