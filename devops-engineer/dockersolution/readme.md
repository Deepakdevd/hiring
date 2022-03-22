
## solution

`assignment/main.go` is an http server written in Golang

[Dockerfile](https://github.com/Deepakdevd/hiring/blob/master/devops-engineer/dockersolution/Dockerfile) written for  the same.

##Steps:

##build image from Dockerfile
 `$docker build -t docker-server .`
## To look for docker images
`$docker images ls`

##run an image
 `$docker run -d -p 8000:8000 docker-server`
 
