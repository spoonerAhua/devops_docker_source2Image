General docker image from source from github


#USAGE

source2image sourceType gitRespority

sourceType: nodejs or php

Example:

  source2image nodejs https://github.com/spoonerAhua/devops_docker_source2Image_example_nodejs.git

Windows 10

  download source2image.bat from https://raw.githubusercontent.com/spoonerAhua/devops_docker_source2Image/master/source2image.bat

  then run source2image.bat with two parameters.

Linux:

  download source2image.sh from https://raw.githubusercontent.com/spoonerAhua/devops_docker_source2Image/master/source2image.sh

  then run source2image.sh with two parameters.

#MEMO

docker build -t devops_docker_s2i:v0.1 .

docker run -itd -p 8080:8080 --name s2i devops_docker_s2i:v0.1

docker run -itd -p 8090:8080 devops_docker_s2i:v0.1

docker run -it --name centos7 centos:centos7.7.1908 bash
