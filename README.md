General docker image from Dockerfile whithin project


#USAGE

Linux:

  curl -o- -L https://raw.githubusercontent.com/spoonerAhua/devops_docker_dockerfile2Image_nodejs/master/dockerfile2image.sh | bash -s --



Windows 10

  download and run https://raw.githubusercontent.com/spoonerAhua/devops_docker_dockerfile2Image_nodejs/master/dockerfile2image.bat




#MEMO

docker build -t devops_docker_d2i:v0.1 .

docker run -itd -p 8080:8080 --name d2i devops_docker_d2i:v0.1

docker run -itd -p 8090:8080 devops_docker_d2i:v0.1

docker run -it --name centos7 centos:centos7.7.1908 bash
