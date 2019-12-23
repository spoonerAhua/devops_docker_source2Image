echo off

set srcLink=%2
if "%srcLink%"=="" goto printHelp

set languageType=%1
rd /s/q srcFromGit
rd /s/q dockerfilesFromGit
git clone https://github.com/spoonerAhua/devops_docker_source2Image.git dockerfilesFromGit
git clone %srcLink% srcFromGit

if "%languageType%"=="php"    goto buildPHP
if "%languageType%"=="nodejs" goto buildNodejs

goto printHelp

:buildPHP
echo "-->build php"

goto clear

:buildNodejs
echo "-->build nodejs"
copy dockerfilesFromGit\Dockerfile_nodejs srcFromGit\Dockerfile
docker build -t devops_docker_s2i_nodejs:v0.1 srcFromGit
goto clear 　

:clear
echo docker build -t devops_docker_d2i:v0.1 srcFromGit
rd /s/q srcFromGit
rd /s/q dockerfilesFromGit
goto exit

:printHelp
echo The programe need two parameters. language type and git link
echo language type: php or nodejs
echo Example:
echo   source2image.bat nodejs https://github.com/spoonerAhua/devops_docker_dockerfile2Image_nodejs.git

:exit
