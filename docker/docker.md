# Docker

## Images

`docker pull <image>`  
Download a image

`docker images`  
List existing images

`docker rmi <id-or-name>`  
Remove a image

## Containers

`docker run`  
Run container from image.  
  -p 80:80 (expose port external:internal)  
  -v /var/www (mount volume at this location - Docker managed volume on host machine)  
  -v $(pwd):/var/www (mount volume from pwd (current folder) to /var/www)  
  --link <other-name:alias> (link to another running container)  

`docker stop <id-or-name>`  
Stops a running container.

`docker ps`  
List running containers.

`docker ps -a`
List all containers.

`docker rm <id-or-name>`  
Remove container (needs only first 4 characters of id or the name)  
  -v (also remove Docker managed volums)  

`docker inspect <id-or-name>`  
Info about the container.

`docker exec <container-name> <command>`  
Run a command inside a container.

`docker logs <container>`  
See container logs.

## Dockerfile

`docker build -t <user/image> .`  
Build image from Docker file in current folder.

## Network

`docker network create --driver bridge <name>`  
Create a custom bridge network.

`docker run -d --net=<network-name>  --name mondodg mongo`  
Run container in the network.

## Examples

`docker run hello-world`
Pulls image from hub, create a container and run it

`docker run -d -p 80:80 --name web nginx`  
Pulls, build and run nginx, detached (-d), mapping port from container to client (-p 80:80), with a name (--name web)

`docker run --rm -it -p 80:3000 -v $(pwd):/var/www -w /var/www node npm start`  
NodeJS app
