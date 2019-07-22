# Docker 101 Tutorial

A docker tutorial, taken from \@alikhil, sprinkled with Data Science and presented to my colleagues.

[Link to presentation.](/docker-101.pdf)

## How to ...

### Useful commands
Show all running containers. "ps" stands for process status
```
docker ps
```

Show all containers, including stopped.
```
docker ps
```

Show all available images.
```
docker image ls
```


### Writing a Dockerfile
```
# Source: https://github.com/docker-for-data-science/docker-for-data-science-tutorial/
# EACH COMMAND CREATES A NEW IMAGE LAYER

# Use latest Python runtime as base image
FROM python:3.6.5-alpine3.7

# Set the working directory to /app and copy current dir
WORKDIR /app
COPY ./app /app

# Run hello_world.py when the container launches
CMD ["python", "hello_world.py"]
```

### Building an image
```
docker build -t my_image
```
### Starting a container
```
docker run -it my_image
```
