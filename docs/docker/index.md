# Docker

## Images

Download a image

```
$ docker pull <image>
```

List existing images

```
$ docker images
```

Remove a image

```
$ docker rmi <id-or-name>
```

### Examples

Remove dangling images
```
$ docker rmi $(docker images -f "dangling=true" -q)
```

## Containers

Run container from image 
```
$ docker run <options> <image-name>:<tag> <commands-to-run>
```
Options:  
-p 80:80 (expose port external:internal)  
-v /var/www (mount volume at this location - Docker managed volume on host machine)  
-v $(pwd):/var/www (mount volume from pwd (current folder) to /var/www)  
--link <other-name:alias> (link to another running container)  

Starts an existing container (-a to attach and display the output)
```
$ docker start -a <id-or-name>
```

Stops a running container (gracefully)
```
$ docker stop <id-or-name>
```

Kill a running container
```
$ docker kill <id-or-name>
```

List running containers
```
$ docker ps
```

List all containers
```
$ docker ps -a
```

Remove container
```
$ docker rm <id-or-name>
```
Options:
-v (also remove Docker managed volums)  

Info about the container
```
$ docker inspect <id-or-name>
```

Run a command inside a container (-it for interactive terminal)
```
$ docker exec -it <container-name> <command>
```

See container logs
```
$ docker logs <container>
```

### Examples

Remove all stopped containers.  
```
$ docker rm $(docker ps -a -q)
```

Run shell inside aq container
```
$ docker exec -it <container-name> sh (or bash, zsh, powershell)
```

## Volumes

Create a new volume
```
$ docker volume create --name hello
```

List volumes.
```
$ docker volume ls
```

List dangling volumes
```
$ docker volume ls -f dangling=true
```

Remove volume
```
$ docker volume rm hello
```

### Examples

Create a container using the _hello_ volume
```
$ docker run -d -v hello:/world busybox ls /world
```

Remove dangling volumes
```
$ docker volume rm $(docker volume ls -f "dangling=true" -q)
```

## Dockerfile

Build image from Docker file in current folder
```
$ docker build -t <user/image:tag> .
```

## Network

Create a custom bridge network
```
$ docker network create --driver bridge <name>
```

Run container in the network
```
$ docker run -d --net=<network-name>  --name mondodg mongo
```

List available networks
```
$ docker network ls
```

Show info about the network
```
$ docker network inspect <network-name>
```

## Compose

Build services from docker-compose.yml  
```
$ docker-compose build
```

Start services  
```
$ docker-compose up
```

## Examples

NodeJS app
```
$ docker run --rm -it -p 80:3000 -v $(pwd):/var/www -w /var/www node npm start
```

## System

Remove all stopped containers, danling images, build cache, etc
```
$ docker system prune
```
