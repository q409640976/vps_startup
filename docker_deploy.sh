mkdir ~/docker_shared
chmod 777 ~/docker_shared/
docker build -f ./docker_deploy/bt/Dockerfile -t ray/bt:lnmp
docker run -tid --name baota --net=host --privileged=true --restart always -v ~/docker_shared/wwwroot:/www/wwwroot ray/bt:lnmp
