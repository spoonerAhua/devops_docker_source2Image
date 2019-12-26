#!/bin/bash
function cleanEnv()
{
  rm -f srcFromGit
  rm -f dockerfilesFromGit
}

function printHelp()
{
  echo The programe need two parameters. language type and git link
  echo language type: php or nodejs
  echo Example:
  echo   source2image.bat nodejs https://github.com/spoonerAhua/devops_docker_dockerfile2Image_nodejs.git
}

srcLink=$3
imageName=$2
languageType=$1

if [ "$srcLink" = "" ]; then
  printHelp
  exit 1
fi

cleanEnv

git clone https://github.com/spoonerAhua/devops_docker_source2Image.git dockerfilesFromGit
git clone %srcLink% srcFromGit

if [ $languageType = "php" ]; then
  echo "-->build php"
elif [ $languageType = "nodejs" ]; then
  echo "-->build nodejs"
  copy dockerfilesFromGit\Dockerfile_nodejs srcFromGit\Dockerfile
  docker build -t %imageName% srcFromGit
  goto clear
fi

cleanEnv

