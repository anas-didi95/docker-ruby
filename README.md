# Docker Ruby Environment Development

## Introduction
This repository is used to bootstrap the development environment for Ruby.
The folder `services` resides the Docker configuration of the environment.
The folder `code` resides the codebase and used as working directory for the development.


## Available Make Commmand
```
make config
## Validate and view Compose file
```
```
make build
## Build container
```
```
make up
## Start container in detached mode
```
```
make down
## Stop and remove container
```
```
make reset
## Stop and remove container, then start the container back.
```
