# Image,Container,Volumeの数や容量を表示
docker system df

# 全コンテナ停止 
# docker stop $(docker ps -q)
# 全コンテナ削除:
# docker rm $(docker ps -q -a)
# 全イメージ削除:
# docker rmi $(docker images -q)


# @echo off
# FOR /f "tokens=*" %%i IN ('docker ps -aq') DO docker stop %%i && docker rm %%i
# FOR /f "tokens=*" %%i IN ('docker images --format "{{.ID}}"') DO docker rmi %%i

foreach ($container in $(docker ps -q)) {
    docker rm $container -f
}


foreach ($line in $(docker ps -a) ) {

    $line -match "^\w{12}"
    $container = docker inspect $Matches.Values | ConvertFrom-Json

    if ( $container.id ) {
        docker rm $Matches.Values
    }
}

# $images = docker images -q

# foreach ($image in $images) {
#     docker rmi $image -f
# }
foreach ($image in $(docker images -q)) {
    docker rmi $image -f
}
   
docker volume ls
docker volume prune

docker system df

# Rails アプリケーションを Docker を使って開発する、ほとんどの人が通る（であろう）道 - Qiita
# https://qiita.com/kmt/items/89c31d647bf42bf2300c
rm ./tmp/pids/server.pid