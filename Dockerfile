# Source: https://github.com/docker-for-data-science/docker-for-data-science-tutorial/
# EACH COMMAND CREATES A NEW IMAGE LAYER

# Use latest Python runtime as base image
FROM ubuntu:16.04

# Set the working directory to /app and copy current dir
WORKDIR /app
COPY ./app /app

#
RUN apt-get update
RUN apt-get install python -y

# Run hello_world.py when the container launches
CMD ["python", "hello_world.py"]
# ENTRYPOINT bash
