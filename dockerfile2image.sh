rm -rf srcFromGit
git clone https://github.com/spoonerAhua/devops_docker_dockerfile2Image_nodejs.git srcFromGit
docker build -t devops_docker_d2i:v0.1 srcFromGit
rm -rf srcFromGit

