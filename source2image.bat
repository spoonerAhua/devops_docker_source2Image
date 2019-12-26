@echo off

set srcLink=%3
set imageName=%2

if "%srcLink%"=="" goto printHelp

set languageType=%1

if exist srcFromGit (
  rd /s/q srcFromGit 
) 

if exist dockerfilesFromGit (
  rd /s/q dockerfilesFromGit
) 

git clone https://github.com/spoonerAhua/devops_docker_source2Image.git dockerfilesFromGit
git clone %srcLink% srcFromGit

if "%languageType%"=="php" (
  echo "-->build php"  
  goto clear 
)

if "%languageType%"=="nodejs" (
  echo "-->build nodejs"
  copy dockerfilesFromGit\Dockerfile_nodejs srcFromGit\Dockerfile
  docker build -t %imageName% srcFromGit
  goto clear 
)

:printHelp
echo The programe need three parameters. 
echo   language type: php or nodejs
echo   image name
echo   git link
echo Example:
echo   source2image nodejs devops_docker_s2i:v0.1 https://github.com/spoonerAhua/devops_docker_source2Image_example_nodejs.git

:clear
if exist srcFromGit (
  rd /s/q srcFromGit 
) 

if exist dockerfilesFromGit (
  rd /s/q dockerfilesFromGit
) 

:exit
