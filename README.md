General docker image from source int github

#USAGE

source2image sourceType imageName gitRespority

sourceType: nodejs or php

Example:

  source2image nodejs devops_docker_s2i:v0.1 https://github.com/spoonerAhua/devops_docker_source2Image_example_nodejs.git

  docker run -itd -p 8080:8080 --name nodejs devops_docker_s2i:v0.1
  
  then browse http://localhost:8080/ or curl http://localhost:8080/
  
Windows 10

  git clone https://github.com/spoonerAhua/devops_docker_source2Image.git

  then run source2image.bat with two parameters.

Linux:

  git clone https://github.com/spoonerAhua/devops_docker_source2Image.git

  then run source2image.sh with two parameters.

#MEMO

docker build -t devops_docker_s2i:v0.1 .

docker run -itd -p 8080:8080 --name s2i devops_docker_s2i:v0.1

docker run -itd -p 8090:8080 devops_docker_s2i:v0.1

docker run -it --name centos7 centos:centos7.7.1908 bash
