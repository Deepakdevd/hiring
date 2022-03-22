
## solution

`assignment/main.go` is an http server written in Golang

[Dockerfile](https://github.com/Deepakdevd/hiring/blob/master/devops-engineer/dockersolution/Dockerfile) written for  the same.

## Steps:

## build image from Dockerfile
 `$docker build -t docker-server .`
## To look for docker images
`$docker images ls`

## run an image
 `$docker run -d -p 8000:8000 docker-server`
 
## how to push image to conatiner regitry(DockerHub)
 Follow the steps In your CLI
 `$docker login`
 
 `$docker tag docker-server <dockerid>/<image tobe named in registry>`
 
 `$docker push <dockerid>/<image tobe named in registry> `
