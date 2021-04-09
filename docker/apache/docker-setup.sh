#!/bin/bash

# Install Docker
yum install docker -y

# Enable & start Docker
systemctl enable docker
systemctl start docker

# Download Dockerfile
cd $(mktemp -d /tmp/rmuhammad/Simplidocker.XXXXXXXX)
curl https://raw.githubusercontent.com/rmuhammad1/CapstoneProject3/main/docker/apache/Dockerfile --output Dockerfile

# Build image
docker build -t centosapache .

# Run container
docker run --name dev   -d -p 2018:80 centosapache
docker run --name stage -d -p 2019:80 centosapache
docker run --name prod  -d -p 2020:80 centosapache