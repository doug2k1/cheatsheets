# Docker

## Install

Docker for Mac

## Images

`docker images`  
List images

## Containers

`docker run`  
Run container from image.

`docker stop <id-or-name>`  
Stops a running container.

`docker ps`  
List running containers.

`docker ps -a`
List all containers.

`docker rm <id-or-name>`
Remove container (needs only first 4 characters of id or the name)

## Examples

`docker run hello-world`
Pulls image from hub, create a container and run it

`docker run -d -p 80:80 --name web nginx`  
Pulls, build and run nginx, detached (-d), mapping port from container to client (-p 8:80), with a name (--name web)
